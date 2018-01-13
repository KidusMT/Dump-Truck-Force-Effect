package com.googleplaystore.kidusmt.dynamicsassignment;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.drawable.AnimationDrawable;
import android.support.v7.app.AlertDialog;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.Spinner;
import android.widget.Switch;
import android.widget.Toast;

import java.util.ArrayList;


public class MainActivity extends AppCompatActivity {

    private ImageView view;
    private AnimationDrawable frameAnimation;
    Button LiftUp,LiftDown;
    Button Calculate, Graph;
    Spinner matrial_type, lift_force;
    Switch stopLift;

    String matrial_type_input;

    String max_lift_result, load_unload_result;

    double material_dencity;
    private double bagage_radius,angle_teta,maximum_load_mass_capacity,maximum_volume_capacity,volume_of_material,material_mass,weight_of_material,angular_acceleration,piston_level,velocity,lift_time_input,acc2,unloaded_distance,vf,total_unloaded;

    EditText loadMass, liftTime;
    String spinner_materialType, spinner_lifeForceSpinner,lMass,lTime;
    String[] answer_values;

    ArrayList<Double> Load;
    ArrayList<Double> Volume;


    final Context context = this;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        //-----------------------------------------------------------

        loadMass = (EditText) findViewById(R.id.load_mass);
        liftTime = (EditText) findViewById(R.id.lift_time);

        matrial_type =(Spinner) findViewById(R.id.material_type_spinner);
        lift_force = (Spinner) findViewById(R.id.lift_force_spinner);


        //------------------------------------------------------------



        //------------------------------------------------------------

        // Type casting the Image View
        view = (ImageView) findViewById(R.id.imageView);

        stopLift = (Switch) findViewById(R.id.animation_toggle);

        LiftUp = (Button) findViewById(R.id.lift_up);

        LiftDown = (Button) findViewById(R.id.lift_down);

        Calculate = (Button) findViewById(R.id.bt_calculate);

        Graph = (Button) findViewById(R.id.bt_graph);


        Calculate.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                matrial_type_input = matrial_type.getSelectedItem().toString();

                switch (matrial_type_input){
                    case "Metal":
                        material_dencity = 9700;
                        break;
                    case "Sand":
                        material_dencity = 1520;
                        break;
                    case "Wood":
                        material_dencity = 740;
                        break;
                    default:
                        material_dencity = 1520;
                }
                spinner_materialType = matrial_type_input;
                spinner_lifeForceSpinner = lift_force.getSelectedItem().toString();
                lMass = loadMass.getText().toString();
                lTime = liftTime.getText().toString();

                Calculate();
            }
        });

        Graph.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(MainActivity.this,GraphActivity.class);
                startActivity(intent);
            }
        });

        // Setting animation_list.xml as the background of the image view
        view.setBackgroundResource(R.drawable.frame_animation_list);

        // Type casting the Animation drawable
        frameAnimation = (AnimationDrawable) view.getBackground();

        //frameAnimation.

        //set true if you want to animate only once
        frameAnimation.setOneShot(false);

        //starts the frame animation
        frameAnimation.start();

        stopLift.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener(){
            @Override
            public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
                if(isChecked){
                    frameAnimation.stop();
                } else if (!isChecked){
                    frameAnimation.start();
                }
            }
        });

        LiftDown.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if(frameAnimation.isRunning()){
                    Toast.makeText(MainActivity.this,"First Stop Auto-lift",Toast.LENGTH_SHORT).show();
                }else{

                }
            }
        });

        LiftUp.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if(frameAnimation.isRunning()){
                    Toast.makeText(MainActivity.this,"First Stop Auto-lift",Toast.LENGTH_SHORT).show();
                }else{

                }
            }
        });

    }

    public void Calculate(){

        material_mass = Double.parseDouble(lMass);
        //maximum_lift_force = 686,700 N;
        maximum_load_mass_capacity = 70000;//70 Ton
        maximum_volume_capacity = 15.2;
        bagage_radius = 1.9;

        volume_of_material = material_mass / material_dencity;
        weight_of_material = material_dencity * Double.parseDouble(lMass);

        if(material_mass>10000){
            String message = "The volume is higher than the maximum capacity of the car.!\n" +
                    "Decrease the mass to proceed.";
            errorDialog(message);
        }else{
            //NOTE:
            //volume_of_material <= maximum_volume_capacity;
            //material_mass <= maximum_load_mass_capacity;

            angular_acceleration = (Double.parseDouble(spinner_lifeForceSpinner) - weight_of_material)/material_mass;

            angle_teta = ((Math.pow(vf,2)/(angular_acceleration*bagage_radius))*(180/Math.PI)%90)+15;//converted to angle

            acc2 = 9.81*Math.sin(angle_teta);

            vf = acc2* Double.parseDouble(lTime);

            unloaded_distance = Math.pow(vf,2)/(2*acc2);

            //total_unloaded <= 3.8 meters
            total_unloaded = unloaded_distance * 2 * 2;

            max_lift_result = Double.toString(angle_teta);

            load_unload_result = Double.toString(total_unloaded);

            answer_values = new String[]{spinner_materialType,lMass,spinner_lifeForceSpinner,lTime,max_lift_result,load_unload_result};

            Intent i = new Intent(MainActivity.this,AnswerActivity.class);
            i.putExtra("answers",answer_values);
            startActivity(i);
        }
    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        MenuInflater inflater = getMenuInflater();
        inflater.inflate(R.menu.main_menu, menu);
        return true;
    }

    public void errorDialog(String message){
        AlertDialog.Builder alertDialogBuilder = new AlertDialog.Builder(context);

        // set title
        alertDialogBuilder.setTitle("Incorrect Input!");

        // set dialog message
        alertDialogBuilder
                .setMessage(message)
                .setCancelable(false)
//                .setPositiveButton("Ok",new DialogInterface.OnClickListener() {
//                    public void onClick(DialogInterface dialog,int id) {
//                        // if this button is clicked, close
//                        // current activity
//                        MainActivity.this.finish();
//                    }
//                })
                .setNegativeButton("Ok",new DialogInterface.OnClickListener() {
                    public void onClick(DialogInterface dialog,int id) {
                        // if this button is clicked, just close
                        // the dialog box and do nothing
                        dialog.cancel();
                    }
                });

        // create alert dialog
        AlertDialog alertDialog = alertDialogBuilder.create();

        // show it
        alertDialog.show();
}


    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
// Handle item selection
        switch (item.getItemId()) {
            case R.id.menu_about:
                Intent intent_about = new Intent(MainActivity.this,AboutActivity.class);
                startActivity(intent_about);
                return true;
            case R.id.menu_help:
                Intent intent_help = new Intent(MainActivity.this,Help.class);
                startActivity(intent_help);
                return true;
            case R.id.menu_exit:
                finish();
                return true;
            default:
                return super.onOptionsItemSelected(item);
        }
    }


}
