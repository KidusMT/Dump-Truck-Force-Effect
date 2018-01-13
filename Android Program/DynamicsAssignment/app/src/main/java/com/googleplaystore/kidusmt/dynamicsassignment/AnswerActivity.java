package com.googleplaystore.kidusmt.dynamicsassignment;

import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.widget.TextView;

import com.github.mikephil.charting.charts.HorizontalBarChart;

/**
 * Created by KidusMT on 1/21/2017.
 */

public class AnswerActivity extends AppCompatActivity {

    TextView  answer_lmass = null, answer_ltime = null, answer_materialType = null, answer_lforce = null,answer_max_lift = null,answer_load_unload = null;
    String[] answers_from_main = null;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.fragment_answer);

        answer_materialType = (TextView) findViewById(R.id.material_type_result);
        answer_lmass = (TextView) findViewById(R.id.load_volume_result);
        answer_lforce = (TextView) findViewById(R.id.lift_force_results);
        answer_ltime = (TextView) findViewById(R.id.lift_time_results);

        answer_max_lift = (TextView) findViewById(R.id.max_lift_result);
        answer_load_unload = (TextView) findViewById(R.id.load_unload_result);


        Bundle i = getIntent().getExtras();

        try{
            answers_from_main = i.getStringArray("answers");
            answer_materialType.setText(answers_from_main[0].toString());
            answer_lmass.setText(answers_from_main[1].toString());
            answer_lforce.setText(answers_from_main[2].toString());
            answer_ltime.setText(answers_from_main[3].toString());

            answer_max_lift.setText(answers_from_main[4].toString());
            answer_load_unload.setText(answers_from_main[5].toString());
        }catch (NullPointerException e){
            e.printStackTrace();
        }

    }
}
