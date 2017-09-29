.class public Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;
.super Lcom/alipay/android/app/hardwarepay/base/AbstractHardwarePay;


# static fields
.field private static isCallBack:Z


# instance fields
.field private callBack:Ljava/lang/Object;

.field private receiver:Landroid/content/BroadcastReceiver;

.field private supportHardwarePay:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->isCallBack:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/alipay/android/app/hardwarepay/base/AbstractHardwarePay;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->callBack:Ljava/lang/Object;

    .line 191
    new-instance v0, Lcom/alipay/android/app/hardwarepay/bracelet/i;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/hardwarepay/bracelet/i;-><init>(Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;)V

    iput-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->receiver:Landroid/content/BroadcastReceiver;

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;)I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->supportHardwarePay:I

    return v0
.end method

.method static synthetic access$002(Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;I)I
    .locals 0

    .prologue
    .line 37
    iput p1, p0, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->supportHardwarePay:I

    return p1
.end method

.method static synthetic access$100(Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->callBack:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method protected callbackWhenFailed(Landroid/app/Activity;Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPayHelper;I)V
    .locals 3

    .prologue
    .line 230
    new-instance v0, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v0}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    .line 232
    :try_start_0
    const-string/jumbo v1, "type"

    const/16 v2, 0x1f8

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;I)V

    .line 233
    const-string/jumbo v1, "result"

    const/16 v2, 0x12c

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;I)V

    .line 234
    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->callBack:Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v1, p3, v0}, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->toCallback(Lcom/alipay/android/app/hardwarepay/base/BaseCommonPayHelper;Ljava/lang/Object;ILjava/lang/String;)V

    .line 235
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public varargs execute(Landroid/content/Context;I[Ljava/lang/Object;)V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 65
    .line 67
    :try_start_0
    invoke-static {}, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPayHelper;->a()Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPayHelper;

    move-result-object v2

    .line 68
    if-nez v2, :cond_0

    .line 164
    :goto_0
    return-void

    .line 71
    :cond_0
    if-eqz p3, :cond_8

    array-length v0, p3

    if-lez v0, :cond_8

    .line 72
    array-length v5, p3

    const/4 v0, 0x0

    move v4, v0

    move-object v1, v3

    :goto_1
    if-ge v4, v5, :cond_4

    aget-object v0, p3, v4

    .line 73
    if-eqz v0, :cond_3

    .line 74
    instance-of v6, v0, Lcom/alipay/android/app/json/JSONObject;

    if-eqz v6, :cond_1

    .line 77
    check-cast v0, Lcom/alipay/android/app/json/JSONObject;

    .line 72
    :goto_2
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move-object v1, v0

    goto :goto_1

    .line 78
    :cond_1
    instance-of v6, v0, Ljava/lang/String;

    if-eqz v6, :cond_2

    .line 79
    check-cast v0, Ljava/lang/String;

    .line 80
    new-instance v1, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v1, v0}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 81
    goto :goto_2

    .line 82
    :cond_2
    iput-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->callBack:Ljava/lang/Object;

    :cond_3
    move-object v0, v1

    goto :goto_2

    :cond_4
    move-object v7, v1

    .line 86
    :goto_3
    const-string/jumbo v0, "type"

    invoke-virtual {v7, v0}, Lcom/alipay/android/app/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    .line 87
    const-string/jumbo v0, "authType"

    invoke-virtual {v7, v0}, Lcom/alipay/android/app/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 88
    const-string/jumbo v0, "wearType"

    invoke-virtual {v7, v0}, Lcom/alipay/android/app/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    .line 89
    sparse-switch v4, :sswitch_data_0

    .line 159
    :cond_5
    :goto_4
    :sswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[BraceletPay-execute]:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "[isCallBack]=>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->isCallBack:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 160
    :catch_0
    move-exception v0

    .line 161
    const-string/jumbo v1, "ex"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/alipay/android/app/statistic/StatisticManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 162
    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 91
    :sswitch_1
    :try_start_1
    new-instance v0, Lcom/alipay/android/app/hardwarepay/bracelet/e;

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/alipay/android/app/hardwarepay/bracelet/e;-><init>(Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPayHelper;Landroid/content/Context;III)V

    .line 114
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 115
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_4

    .line 120
    :sswitch_2
    sget-object v0, Lcom/alipay/android/app/pay/GlobalConstant;->APPID:Ljava/lang/String;

    invoke-virtual {v7}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lcom/alipay/android/app/util/LogAgent;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 122
    const-string/jumbo v0, "extraPara"

    invoke-virtual {v7, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 123
    const-string/jumbo v0, "extraPara"

    invoke-virtual {v7, v0}, Lcom/alipay/android/app/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 125
    :goto_5
    const-string/jumbo v0, "data"

    invoke-virtual {v7, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 127
    if-eqz v1, :cond_6

    .line 128
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "[extraPara:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 130
    :cond_6
    const-string/jumbo v1, "version"

    invoke-virtual {v7, v1}, Lcom/alipay/android/app/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iget-object v3, p0, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->callBack:Ljava/lang/Object;

    invoke-virtual {v2, v4, v1, v0, p1}, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPayHelper;->a(IILjava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_4

    .line 137
    :sswitch_3
    const-string/jumbo v0, "type"

    invoke-virtual {v7, v0}, Lcom/alipay/android/app/json/JSONObject;->remove(Ljava/lang/String;)V

    .line 138
    const-string/jumbo v0, "type"

    invoke-static {}, Lcom/alipay/android/app/hardwarepay/base/HardwareConstants;->a()Landroid/util/SparseIntArray;

    move-result-object v1

    sget v3, Lcom/alipay/android/app/hardwarepay/base/RequestManager;->b:I

    invoke-virtual {v1, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    invoke-virtual {v7, v0, v1}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;I)V

    .line 141
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->callBack:Ljava/lang/Object;

    invoke-virtual {v7}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2, v0, p2, v1}, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->toCallback(Lcom/alipay/android/app/hardwarepay/base/BaseCommonPayHelper;Ljava/lang/Object;ILjava/lang/String;)V

    .line 142
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->isCallBack:Z

    goto/16 :goto_4

    .line 145
    :sswitch_4
    sget-boolean v0, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->isCallBack:Z

    if-nez v0, :cond_5

    .line 146
    sget-object v0, Lcom/alipay/android/app/pay/GlobalConstant;->APPID:Ljava/lang/String;

    invoke-virtual {v7}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lcom/alipay/android/app/util/LogAgent;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 147
    new-instance v0, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v0}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    .line 148
    const-string/jumbo v1, "type"

    invoke-static {}, Lcom/alipay/android/app/hardwarepay/base/HardwareConstants;->a()Landroid/util/SparseIntArray;

    move-result-object v3

    sget v4, Lcom/alipay/android/app/hardwarepay/base/RequestManager;->b:I

    invoke-virtual {v3, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    invoke-virtual {v0, v1, v3}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;I)V

    .line 152
    const-string/jumbo v1, "result"

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v3}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;I)V

    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[BraceletPay-execute-MSG_MSP_EXIT]:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->d()V

    .line 154
    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->callBack:Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v1, p2, v0}, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->toCallback(Lcom/alipay/android/app/hardwarepay/base/BaseCommonPayHelper;Ljava/lang/Object;ILjava/lang/String;)V

    .line 155
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->isCallBack:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4

    :cond_7
    move-object v1, v3

    goto/16 :goto_5

    :cond_8
    move-object v7, v3

    goto/16 :goto_3

    .line 89
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_2
        0x4 -> :sswitch_2
        0x1f4 -> :sswitch_0
        0x1f7 -> :sswitch_3
        0x1fa -> :sswitch_4
    .end sparse-switch
.end method

.method public varargs init(Landroid/content/Context;I[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 48
    if-eqz p3, :cond_0

    array-length v0, p3

    if-nez v0, :cond_1

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    const/4 v0, 0x0

    aget-object v0, p3, v0

    instance-of v0, v0, Lcom/alipay/android/app/json/JSONObject;

    if-eqz v0, :cond_0

    .line 54
    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->e()V

    .line 55
    invoke-static {}, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPayHelper;->a()Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPayHelper;

    move-result-object v0

    .line 56
    invoke-static {}, Lcom/alipay/android/app/assist/MspAssistUtil;->z()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPayHelper;->a(Landroid/content/Context;ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->supportHardwarePay:I

    .line 57
    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->e()V

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u652f\u4ed8\u8bf7\u6c42\u624b\u73af\u521d\u59cb\u5316\u7ed3\u679c\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->supportHardwarePay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->d()V

    goto :goto_0
.end method

.method public setObject(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 243
    return-void
.end method

.method protected showDialogForService(Landroid/app/Activity;Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPayHelper;I)V
    .locals 1

    .prologue
    .line 168
    new-instance v0, Lcom/alipay/android/app/hardwarepay/bracelet/f;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/alipay/android/app/hardwarepay/bracelet/f;-><init>(Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;Landroid/app/Activity;Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPayHelper;I)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 189
    return-void
.end method
