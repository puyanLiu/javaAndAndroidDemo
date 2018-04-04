package camera.com.queqianme.www.grouprecyclerviewadapterproject.demo.activity;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.widget.TextView;
import android.widget.Toast;

import camera.com.queqianme.www.grouprecyclerviewadapterproject.R;
import camera.com.queqianme.www.grouprecyclerviewadapterproject.demo.adapter.VariousChildAdapter;
import camera.com.queqianme.www.grouprecyclerviewadapterproject.demo.model.GroupModel;
import camera.com.queqianme.www.grouprecyclerviewadapterproject.group.BaseViewHolder;
import camera.com.queqianme.www.grouprecyclerviewadapterproject.group.GroupedRecyclerViewAdapter;

/**
 * 多种子项类型的分组列表
 */
public class VariousChildActivity extends AppCompatActivity {

    private TextView tvTitle;
    private RecyclerView rvList;

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_group_list);

        tvTitle = (TextView) findViewById(R.id.tv_title);
        rvList = (RecyclerView) findViewById(R.id.rv_list);

        tvTitle.setText(R.string.various_child);

        rvList.setLayoutManager(new LinearLayoutManager(this));
        VariousChildAdapter adapter = new VariousChildAdapter(this, GroupModel.getGroups(10, 5));
        adapter.setOnChildClickListener(new GroupedRecyclerViewAdapter.OnChildClickListener() {
            @Override
            public void onChildClick(GroupedRecyclerViewAdapter adapter, BaseViewHolder holder,
                                     int groupPosition, int childPosition) {
                Toast.makeText(VariousChildActivity.this, "子项：groupPosition = " + groupPosition
                                + ", childPosition = " + childPosition,
                        Toast.LENGTH_LONG).show();
            }
        });
        rvList.setAdapter(adapter);

    }

    public static void openActivity(Context context) {
        Intent intent = new Intent(context, VariousChildActivity.class);
        context.startActivity(intent);
    }
}
