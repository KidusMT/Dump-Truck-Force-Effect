package com.googleplaystore.kidusmt.dynamicsassignment;

import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;

import com.github.mikephil.charting.charts.BarChart;
import com.github.mikephil.charting.charts.HorizontalBarChart;
import com.github.mikephil.charting.data.BarData;
import com.github.mikephil.charting.data.BarDataSet;
import com.github.mikephil.charting.data.BarEntry;
import com.jjoe64.graphview.GraphView;
import com.jjoe64.graphview.series.DataPoint;
import com.jjoe64.graphview.series.LineGraphSeries;

import java.util.ArrayList;

/**
 * Created by KidusMT on 1/21/2017.
 */

public class GraphActivity extends AppCompatActivity {


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_graph);

        GraphView graph = (GraphView) findViewById(R.id.graph);
        LineGraphSeries<DataPoint> series = new LineGraphSeries<>(new DataPoint[] {
                new DataPoint(0, 1),
                new DataPoint(1, 5),
                new DataPoint(2, 4),
                new DataPoint(3, 3),
                new DataPoint(4, 1)
        });
        graph.addSeries(series);

        //drawGraph();
    }
//    public void drawGraph(){
//
//        ArrayList<BarEntry> entries = new ArrayList<>();
//        entries.add(new BarEntry(4f, 0));
//        entries.add(new BarEntry(8f, 1));
//        entries.add(new BarEntry(6f, 2));
//        entries.add(new BarEntry(12f, 3));
//        entries.add(new BarEntry(18f, 4));
//        entries.add(new BarEntry(9f, 5));
//
//        BarDataSet dataset = new BarDataSet(entries,"# of Calls");
//
//        //X-axis
//        ArrayList<String> labels = new ArrayList<String>();
//        labels.add("1m3");
//        labels.add("2m3");
//        labels.add("3m3");
//        labels.add("4m3");
//        labels.add("5m3");
//        labels.add("6m3");
//
//        BarData data = new BarData(labels, dataset);
//        barChart.setData(data); // set the data and list of lables into chart
//
//        barChart.setDescription("Description");  // set the description
//    }

}
