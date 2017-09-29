.class Lcom/alipay/android/app/flybird/ui/f;
.super Landroid/content/BroadcastReceiver;


# static fields
.field private static final d:Lorg/aspectj/lang/JoinPoint$StaticPart;


# instance fields
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:Lcom/alipay/android/app/json/JSONObject;

.field final synthetic c:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    .line 1
    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string/jumbo v1, "<Unknown>"

    const-class v2, Lcom/alipay/android/app/flybird/ui/f;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "onReceive"

    const-string/jumbo v3, "com.alipay.android.app.flybird.ui.FlybirdWindowManager$12"

    const-string/jumbo v4, "android.content.Context:android.content.Intent"

    const-string/jumbo v5, "arg0:arg1"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x4d6

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/app/flybird/ui/f;->d:Lorg/aspectj/lang/JoinPoint$StaticPart;

    return-void
.end method

.method constructor <init>(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;[Ljava/lang/String;Lcom/alipay/android/app/json/JSONObject;)V
    .locals 0

    .prologue
    .line 1235
    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/f;->c:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    iput-object p2, p0, Lcom/alipay/android/app/flybird/ui/f;->a:[Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/android/app/flybird/ui/f;->b:Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11

    .prologue
    const/4 v7, 0x0

    const/16 v10, 0x4b0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1
    sget-object v0, Lcom/alipay/android/app/flybird/ui/f;->d:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0, p1, p2}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/aspect/Monitor;->aspectOf()Lcom/alipay/mobile/aspect/Monitor;

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    invoke-interface {v0}, Lorg/aspectj/lang/JoinPoint;->getArgs()[Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v3

    aget-object v0, v1, v9

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lcom/alipay/android/app/json/JSONObject;

    const-string/jumbo v5, "result"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "bracelet_authenticate_result"

    invoke-static {v1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "result"

    invoke-virtual {v4, v1}, Lcom/alipay/android/app/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->c()V

    const/16 v1, 0x64

    if-eq v5, v1, :cond_5

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/f;->c:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-static {v1}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->i(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/f;->c:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-static {v1}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->i(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;->e()V

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/f;->c:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-static {v1}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->i(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "flybird_bl_val_failed"

    invoke-static {v6}, Lcom/alipay/android/app/util/ResUtils;->g(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "]"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/high16 v6, -0x10000

    invoke-virtual {v1, v4, v8, v6}, Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;->a(Ljava/lang/String;II)V

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/f;->c:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-static {v1}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->i(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;->a(I)V

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/f;->c:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-static {v1, v7}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->a(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;)Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;

    :cond_0
    const-string/jumbo v1, "alipay_msp_bl_verify_error"

    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->g(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x71

    if-ne v5, v4, :cond_4

    const-string/jumbo v1, "alipay_msp_bl_timeout"

    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->g(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/alipay/android/app/flybird/ui/f;->c:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    const-string/jumbo v5, "bl"

    sget-object v6, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Bncb:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "(\'status=0005\',\'tip="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v7, "\')"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v5, v6, v1}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->a(Ljava/lang/String;Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/f;->c:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-static {v1}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->a(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_2
    :goto_1
    instance-of v1, v0, Landroid/content/Intent;

    if-eqz v1, :cond_3

    const-string/jumbo v1, "Monitor"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "onReceive:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void

    :cond_4
    const/16 v4, 0x7b

    if-ne v5, v4, :cond_1

    const-string/jumbo v1, "alipay_msp_bl_bt_shutdown"

    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->g(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/f;->c:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-static {v1}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->i(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/f;->c:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-static {v1}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->i(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;

    move-result-object v1

    const-string/jumbo v5, "flybird_sd_val_success"

    invoke-static {v5}, Lcom/alipay/android/app/util/ResUtils;->g(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/high16 v6, -0x1000000

    invoke-virtual {v1, v5, v8, v6}, Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;->a(Ljava/lang/String;II)V

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/f;->c:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-static {v1}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->i(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;->c()V

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/f;->c:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-static {v1}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->i(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;

    move-result-object v1

    invoke-virtual {v1, v10}, Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;->a(I)V

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/f;->c:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-static {v1, v7}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->a(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;)Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;

    :goto_2
    new-instance v1, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v1}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    iget-object v5, p0, Lcom/alipay/android/app/flybird/ui/f;->a:[Ljava/lang/String;

    const/4 v6, 0x3

    aget-object v5, v5, v6

    const-string/jumbo v6, "data"

    invoke-virtual {v4, v6}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v4}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    const-string/jumbo v5, "name"

    iget-object v6, p0, Lcom/alipay/android/app/flybird/ui/f;->a:[Ljava/lang/String;

    aget-object v6, v6, v9

    invoke-virtual {v4, v5, v6}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lcom/alipay/android/app/base/message/MspMessage;

    invoke-direct {v5}, Lcom/alipay/android/app/base/message/MspMessage;-><init>()V

    iget-object v6, p0, Lcom/alipay/android/app/flybird/ui/f;->c:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-static {v6}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->f(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)I

    move-result v6

    iput v6, v5, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    iget-object v7, p0, Lcom/alipay/android/app/flybird/ui/f;->b:Lcom/alipay/android/app/json/JSONObject;

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/alipay/android/app/flybird/ui/f;->b:Lcom/alipay/android/app/json/JSONObject;

    invoke-static {v1, v7}, Lcom/alipay/android/app/util/JsonUtils;->a(Lcom/alipay/android/app/json/JSONObject;Lcom/alipay/android/app/json/JSONObject;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_3
    aput-object v1, v6, v8

    invoke-virtual {v4}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v9

    iput-object v6, v5, Lcom/alipay/android/app/base/message/MspMessage;->d:Ljava/lang/Object;

    const/16 v1, 0xb

    iput v1, v5, Lcom/alipay/android/app/base/message/MspMessage;->b:I

    const/16 v1, 0x7d3

    iput v1, v5, Lcom/alipay/android/app/base/message/MspMessage;->c:I

    invoke-static {}, Lcom/alipay/android/app/base/message/MsgSubject;->a()Lcom/alipay/android/app/base/message/MsgSubject;

    move-result-object v1

    invoke-virtual {v1, v5, v10}, Lcom/alipay/android/app/base/message/MsgSubject;->a(Lcom/alipay/android/app/base/message/MspMessage;I)V

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/f;->c:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-static {v1}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->a(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto/16 :goto_1

    :cond_6
    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/f;->c:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-static {v1}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->b(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/f;->c:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-static {v1}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->b(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->e()V

    :cond_7
    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/f;->c:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    const-string/jumbo v5, "bl"

    sget-object v6, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Bncb:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    const-string/jumbo v7, "(\'status=0003\')"

    invoke-virtual {v1, v5, v6, v7}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->a(Ljava/lang/String;Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_8
    invoke-virtual {v1}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3
.end method
