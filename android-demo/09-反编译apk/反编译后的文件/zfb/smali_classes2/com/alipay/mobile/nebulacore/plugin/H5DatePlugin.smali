.class public Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin;
.super Lcom/alipay/mobile/h5container/api/H5SimplePlugin;
.source "H5DatePlugin.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;-><init>()V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 251
    invoke-static {p0, p1}, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/alipay/mobile/h5container/api/H5Event;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;Lcom/alipay/mobile/h5container/api/H5BridgeContext;ZLcom/alibaba/fastjson/JSONObject;)V
    .locals 10

    .prologue
    .line 170
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getActivity()Landroid/app/Activity;

    move-result-object v8

    .line 171
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 249
    :cond_0
    :goto_0
    return-void

    .line 174
    :cond_1
    new-instance v9, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$6;

    .line 175
    new-instance v1, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$5;

    move-object v2, p0

    move-object/from16 v3, p7

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$5;-><init>(Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin;Lcom/alibaba/fastjson/JSONObject;Ljava/util/Calendar;Ljava/util/Calendar;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    .line 219
    const/16 v2, 0xb

    invoke-virtual {p2, v2}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/16 v2, 0xc

    invoke-virtual {p2, v2}, Ljava/util/Calendar;->get(I)I

    move-result v7

    move-object v2, v9

    move-object v3, p0

    move-object v4, v8

    move-object v5, v1

    .line 174
    invoke-direct/range {v2 .. v7}, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$6;-><init>(Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin;Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;II)V

    .line 225
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/nebulacore/R$string;->choosetime:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/app/TimePickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 226
    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Landroid/app/TimePickerDialog;->setCancelable(Z)V

    .line 227
    const/4 v1, -0x2

    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/nebulacore/R$string;->datecancel:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$7;

    invoke-direct {v3, p0, p5}, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$7;-><init>(Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    invoke-virtual {v9, v1, v2, v3}, Landroid/app/TimePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 235
    if-eqz p6, :cond_2

    .line 236
    const/4 v1, -0x3

    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/nebulacore/R$string;->datevalid:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$8;

    move-object/from16 v0, p7

    invoke-direct {v3, p0, v0, p5}, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$8;-><init>(Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    invoke-virtual {v9, v1, v2, v3}, Landroid/app/TimePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 245
    :cond_2
    :try_start_0
    invoke-virtual {v9}, Landroid/app/TimePickerDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 246
    :catch_0
    move-exception v1

    .line 247
    const-string/jumbo v2, "H5DatePlugin"

    const-string/jumbo v3, "show time dialog exception."

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin;Lcom/alipay/mobile/h5container/api/H5Event;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;Lcom/alipay/mobile/h5container/api/H5BridgeContext;ZLcom/alibaba/fastjson/JSONObject;)V
    .locals 0

    .prologue
    .line 167
    invoke-direct/range {p0 .. p7}, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin;->a(Lcom/alipay/mobile/h5container/api/H5Event;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;Lcom/alipay/mobile/h5container/api/H5BridgeContext;ZLcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Calendar;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 252
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 263
    :goto_0
    return-object v0

    .line 255
    :cond_1
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-direct {v2, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 256
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 258
    :try_start_0
    invoke-virtual {v2, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 259
    :catch_0
    move-exception v0

    .line 260
    const-string/jumbo v2, "H5DatePlugin"

    const-string/jumbo v3, "exception detail"

    invoke-static {v2, v3, v0}, Lcom/alipay/mobile/nebulacore/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 261
    goto :goto_0
.end method


# virtual methods
.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 20

    .prologue
    .line 37
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 38
    const-string/jumbo v3, "datePicker"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 39
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    const-string/jumbo v3, "mode"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v4, "minDate"

    const-string/jumbo v5, ""

    invoke-static {v2, v4, v5}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "maxDate"

    const-string/jumbo v6, ""

    invoke-static {v2, v5, v6}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v5, "beginDate"

    invoke-static {v2, v5}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v5, "isIDCard"

    const/4 v8, 0x0

    invoke-static {v2, v5, v8}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v8

    const/4 v2, 0x0

    if-nez v3, :cond_2

    const-string/jumbo v2, "HH:mm:ss"

    :cond_0
    :goto_0
    invoke-static {v4, v2}, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v5

    invoke-static {v6, v2}, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v6

    if-eqz v5, :cond_4

    if-eqz v6, :cond_4

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v11

    cmp-long v4, v9, v11

    if-lez v4, :cond_4

    const-string/jumbo v2, "H5DatePlugin"

    const-string/jumbo v3, "min date should less than max date!"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebulacore/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/alipay/mobile/h5container/api/H5Event$Error;->INVALID_PARAM:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    .line 41
    :cond_1
    :goto_1
    const/4 v2, 0x1

    return v2

    .line 39
    :cond_2
    const/4 v5, 0x1

    if-ne v3, v5, :cond_3

    const-string/jumbo v2, "yyyy-MM-dd"

    goto :goto_0

    :cond_3
    const/4 v5, 0x2

    if-ne v3, v5, :cond_0

    const-string/jumbo v2, "yyyy-MM-dd HH:mm:ss"

    goto :goto_0

    :cond_4
    invoke-static {v7, v2}, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v4

    if-nez v4, :cond_5

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    :cond_5
    if-eqz v5, :cond_6

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v11

    cmp-long v2, v9, v11

    if-lez v2, :cond_6

    const-string/jumbo v2, "H5DatePlugin"

    const-string/jumbo v3, "begin date should greater than min date"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebulacore/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/alipay/mobile/h5container/api/H5Event$Error;->INVALID_PARAM:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    goto :goto_1

    :cond_6
    if-eqz v6, :cond_7

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v11

    cmp-long v2, v9, v11

    if-gez v2, :cond_7

    const-string/jumbo v2, "H5DatePlugin"

    const-string/jumbo v3, "begin date should less than min date"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebulacore/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/alipay/mobile/h5container/api/H5Event$Error;->INVALID_PARAM:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    goto :goto_1

    :cond_7
    new-instance v9, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v9}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    if-nez v3, :cond_8

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v7, p2

    invoke-direct/range {v2 .. v9}, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin;->a(Lcom/alipay/mobile/h5container/api/H5Event;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;Lcom/alipay/mobile/h5container/api/H5BridgeContext;ZLcom/alibaba/fastjson/JSONObject;)V

    goto :goto_1

    :cond_8
    const/4 v2, 0x2

    if-ne v3, v2, :cond_c

    const/4 v15, 0x1

    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$2;

    new-instance v10, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$1;

    move-object/from16 v11, p0

    move-object v12, v5

    move-object v13, v6

    move-object v14, v9

    move-object/from16 v16, p1

    move-object/from16 v17, v4

    move-object/from16 v18, p2

    move/from16 v19, v8

    invoke-direct/range {v10 .. v19}, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$1;-><init>(Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin;Ljava/util/Calendar;Ljava/util/Calendar;Lcom/alibaba/fastjson/JSONObject;ZLcom/alipay/mobile/h5container/api/H5Event;Ljava/util/Calendar;Lcom/alipay/mobile/h5container/api/H5BridgeContext;Z)V

    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Ljava/util/Calendar;->get(I)I

    move-result v15

    const/4 v7, 0x2

    invoke-virtual {v4, v7}, Ljava/util/Calendar;->get(I)I

    move-result v16

    const/4 v7, 0x5

    invoke-virtual {v4, v7}, Ljava/util/Calendar;->get(I)I

    move-result v17

    move-object v11, v3

    move-object/from16 v12, p0

    move-object v13, v2

    move-object v14, v10

    invoke-direct/range {v11 .. v17}, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$2;-><init>(Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin;Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/alipay/mobile/nebulacore/R$string;->choosedate:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/app/DatePickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Landroid/app/DatePickerDialog;->setCancelable(Z)V

    const/4 v2, -0x2

    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v7, Lcom/alipay/mobile/nebulacore/R$string;->datecancel:I

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v7, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$3;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v7, v0, v1}, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$3;-><init>(Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    invoke-virtual {v3, v2, v4, v7}, Landroid/app/DatePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    if-eqz v8, :cond_9

    const/4 v2, -0x3

    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v7, Lcom/alipay/mobile/nebulacore/R$string;->datevalid:I

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v7, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$4;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v7, v0, v9, v1}, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$4;-><init>(Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    invoke-virtual {v3, v2, v4, v7}, Landroid/app/DatePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_9
    :try_start_0
    invoke-virtual {v3}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v2

    if-eqz v5, :cond_a

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/widget/DatePicker;->setMinDate(J)V

    :cond_a
    if-eqz v6, :cond_b

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/widget/DatePicker;->setMaxDate(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_b
    :goto_3
    :try_start_1
    invoke-virtual {v3}, Landroid/app/DatePickerDialog;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v2

    const-string/jumbo v3, "H5DatePlugin"

    const-string/jumbo v4, "show date dialog exception."

    invoke-static {v3, v4, v2}, Lcom/alipay/mobile/nebulacore/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :cond_c
    const/4 v15, 0x0

    goto/16 :goto_2

    :catch_1
    move-exception v2

    const-string/jumbo v4, "H5DatePlugin"

    const-string/jumbo v5, "set min or max date exception."

    invoke-static {v4, v5, v2}, Lcom/alipay/mobile/nebulacore/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method public onPrepare(Lcom/alipay/mobile/h5container/api/H5EventFilter;)V
    .locals 1

    .prologue
    .line 32
    const-string/jumbo v0, "datePicker"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 33
    return-void
.end method
