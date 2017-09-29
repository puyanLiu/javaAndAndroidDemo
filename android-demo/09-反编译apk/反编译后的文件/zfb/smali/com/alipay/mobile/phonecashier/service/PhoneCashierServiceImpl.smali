.class public Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;
.super Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierServcie;
.source "PhoneCashierServiceImpl.java"


# instance fields
.field private mLastOpenMspTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierServcie;-><init>()V

    .line 76
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;->mLastOpenMspTime:J

    .line 44
    invoke-static {}, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;->a()Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;->b()V

    .line 46
    return-void
.end method

.method private showDialog(Landroid/app/Activity;Lcom/alipay/android/app/json/JSONObject;)V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 160
    const-string/jumbo v0, "message"

    invoke-virtual {p2, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 161
    const-string/jumbo v0, "title"

    invoke-virtual {p2, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 162
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    :goto_0
    return-void

    .line 168
    :cond_0
    const-string/jumbo v0, "buttons"

    invoke-virtual {p2, v0}, Lcom/alipay/android/app/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONArray;

    move-result-object v0

    .line 169
    invoke-virtual {v0}, Lcom/alipay/android/app/json/JSONArray;->length()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 171
    :pswitch_0
    invoke-virtual {v0, v3}, Lcom/alipay/android/app/json/JSONArray;->get(I)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    .line 172
    const-string/jumbo v2, "action"

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 173
    const-string/jumbo v2, "text"

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 175
    new-instance v3, Lcom/alipay/mobile/phonecashier/service/b;

    invoke-direct {v3, p0, v5, p1}, Lcom/alipay/mobile/phonecashier/service/b;-><init>(Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;Ljava/lang/String;Landroid/app/Activity;)V

    move-object v0, p1

    move-object v5, v4

    .line 174
    invoke-static/range {v0 .. v5}, Lcom/alipay/android/app/ui/quickpay/widget/SystemDefaultDialog;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    goto :goto_0

    .line 185
    :pswitch_1
    invoke-virtual {v0, v3}, Lcom/alipay/android/app/json/JSONArray;->get(I)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v2

    .line 186
    const-string/jumbo v3, "action"

    invoke-virtual {v2, v3}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 187
    const-string/jumbo v3, "text"

    invoke-virtual {v2, v3}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 189
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/alipay/android/app/json/JSONArray;->get(I)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    .line 190
    const-string/jumbo v3, "action"

    invoke-virtual {v0, v3}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 191
    const-string/jumbo v3, "text"

    invoke-virtual {v0, v3}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 193
    new-instance v3, Lcom/alipay/mobile/phonecashier/service/c;

    invoke-direct {v3, p0, v5, p1}, Lcom/alipay/mobile/phonecashier/service/c;-><init>(Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;Ljava/lang/String;Landroid/app/Activity;)V

    .line 200
    new-instance v5, Lcom/alipay/mobile/phonecashier/service/d;

    invoke-direct {v5, p0, v6, p1}, Lcom/alipay/mobile/phonecashier/service/d;-><init>(Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;Ljava/lang/String;Landroid/app/Activity;)V

    move-object v0, p1

    .line 192
    invoke-static/range {v0 .. v5}, Lcom/alipay/android/app/ui/quickpay/widget/SystemDefaultDialog;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    goto :goto_0

    .line 169
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private showToast(Landroid/app/Activity;Lcom/alipay/android/app/json/JSONObject;)V
    .locals 2

    .prologue
    .line 216
    const-string/jumbo v0, "message"

    invoke-virtual {p2, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 217
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 228
    :goto_0
    return-void

    .line 220
    :cond_0
    new-instance v1, Lcom/alipay/mobile/phonecashier/service/e;

    invoke-direct {v1, p0, p1, v0}, Lcom/alipay/mobile/phonecashier/service/e;-><init>(Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 227
    const-string/jumbo v0, "action"

    invoke-virtual {p2, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/alipay/mobile/phonecashier/service/util/PhoneCashierUtil;->a(Ljava/lang/String;Landroid/app/Activity;)V

    goto :goto_0
.end method


# virtual methods
.method public boot(Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierCallback;)V
    .locals 2

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 60
    const-string/jumbo v1, "Phonecashierservice order boot"

    invoke-static {v1}, Lcom/alipay/android/app/util/LogUtils;->b(Ljava/lang/String;)V

    .line 61
    if-eqz v0, :cond_0

    .line 63
    const-class v1, Lcom/alipay/mobile/phonecashier/assist/PhoneCashierAssistService;

    .line 64
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 63
    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/phonecashier/assist/PhoneCashierAssistService;

    .line 65
    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {v0}, Lcom/alipay/mobile/phonecashier/assist/PhoneCashierAssistService;->getUserInfoSessionId()Ljava/lang/String;

    move-result-object v0

    .line 67
    if-eqz p1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 69
    const-string/jumbo v1, ""

    .line 68
    invoke-static {p1, v1, v0}, Lcom/alipay/mobile/phonecashier/service/util/PhoneCashierUtil;->a(Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    invoke-virtual {p0, v0, p2}, Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;->boot(Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierCallback;)V

    .line 74
    :cond_0
    return-void
.end method

.method public boot(Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierCallback;)V
    .locals 4

    .prologue
    .line 84
    const-string/jumbo v0, "Phonecashierservice suffix boot"

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->b(Ljava/lang/String;)V

    .line 85
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    .line 86
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findTopRunningApp()Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v1

    .line 87
    const-string/jumbo v0, ""

    .line 88
    if-eqz v1, :cond_0

    .line 89
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/MicroApplication;->getAppId()Ljava/lang/String;

    move-result-object v0

    .line 92
    :cond_0
    const-string/jumbo v1, "20000125"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;->mLastOpenMspTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 93
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;->mLastOpenMspTime:J

    .line 94
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 95
    const-string/jumbo v1, "orderSuffix"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-static {}, Lcom/alipay/mobile/phonecashier/service/PhoneCashierPayAssist;->a()Lcom/alipay/mobile/phonecashier/service/PhoneCashierPayAssist;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/alipay/mobile/phonecashier/service/PhoneCashierPayAssist;->a(Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierCallback;)V

    .line 98
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    .line 99
    const-string/jumbo v2, ""

    const-string/jumbo v3, "20000125"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 102
    :cond_2
    return-void
.end method

.method public bootToCertification(Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierCallback;)V
    .locals 0

    .prologue
    .line 111
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;->boot(Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierCallback;)V

    .line 112
    return-void
.end method

.method public checkAndUpdate(Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierCallback;)V
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierCallback;->onPaySuccess(Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierPaymentResult;)V

    .line 116
    return-void
.end method

.method public createLiveConnection()V
    .locals 1

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    .line 129
    invoke-static {v0}, Lcom/alipay/android/app/helper/PayHelper;->a(Landroid/content/Context;)Lcom/alipay/android/app/helper/PayHelper;

    move-result-object v0

    .line 131
    invoke-virtual {v0}, Lcom/alipay/android/app/helper/PayHelper;->a()V

    .line 132
    return-void
.end method

.method public handleError(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 140
    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->d()V

    .line 141
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    :try_start_0
    new-instance v0, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v0, p2}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 146
    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 147
    const-string/jumbo v2, "toast"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 148
    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;->showToast(Landroid/app/Activity;Lcom/alipay/android/app/json/JSONObject;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    .line 151
    :cond_2
    const-string/jumbo v2, "dialog"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 152
    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;->showDialog(Landroid/app/Activity;Lcom/alipay/android/app/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public loadLocalTid()Lcom/alipay/android/app/helper/Tid;
    .locals 1

    .prologue
    .line 135
    invoke-static {}, Lcom/alipay/android/app/helper/TidHelper;->a()Lcom/alipay/android/app/helper/Tid;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 121
    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 125
    return-void
.end method
