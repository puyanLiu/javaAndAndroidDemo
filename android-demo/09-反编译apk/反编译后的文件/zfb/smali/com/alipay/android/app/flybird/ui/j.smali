.class Lcom/alipay/android/app/flybird/ui/j;
.super Landroid/content/BroadcastReceiver;


# static fields
.field private static final f:Lorg/aspectj/lang/JoinPoint$StaticPart;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alipay/android/app/json/JSONObject;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Z

.field final synthetic e:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    .line 1
    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string/jumbo v1, "<Unknown>"

    const-class v2, Lcom/alipay/android/app/flybird/ui/j;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "onReceive"

    const-string/jumbo v3, "com.alipay.android.app.flybird.ui.FlybirdWindowManager$15"

    const-string/jumbo v4, "android.content.Context:android.content.Intent"

    const-string/jumbo v5, "arg0:arg1"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x57f

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/app/flybird/ui/j;->f:Lorg/aspectj/lang/JoinPoint$StaticPart;

    return-void
.end method

.method constructor <init>(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;Ljava/lang/String;Lcom/alipay/android/app/json/JSONObject;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 1404
    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/j;->e:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    iput-object p2, p0, Lcom/alipay/android/app/flybird/ui/j;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/android/app/flybird/ui/j;->b:Lcom/alipay/android/app/json/JSONObject;

    iput-object p4, p0, Lcom/alipay/android/app/flybird/ui/j;->c:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/alipay/android/app/flybird/ui/j;->d:Z

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13

    .prologue
    const/16 v3, 0x3e8

    const/16 v5, 0x71

    const/high16 v11, -0x10000

    const/4 v10, 0x1

    const/4 v4, 0x0

    .line 1
    sget-object v0, Lcom/alipay/android/app/flybird/ui/j;->f:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0, p1, p2}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/aspect/Monitor;->aspectOf()Lcom/alipay/mobile/aspect/Monitor;

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v6

    invoke-interface {v0}, Lorg/aspectj/lang/JoinPoint;->getArgs()[Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v7

    aget-object v1, v1, v10

    const-string/jumbo v0, "result"

    const/16 v2, 0x270f

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->c()V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/j;->e:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->l(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_7

    const/16 v0, 0x65

    if-ne v2, v0, :cond_7

    move v0, v5

    :goto_0
    if-ne v0, v5, :cond_1

    :goto_1
    const-string/jumbo v2, "false"

    new-instance v5, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v5}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    const-string/jumbo v8, "maxretrytime"

    const-string/jumbo v9, "1"

    invoke-virtual {v5, v8, v9}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    sparse-switch v0, :sswitch_data_0

    :goto_2
    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/j;->e:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-static {v2}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->n(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_5

    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/j;->e:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-static {v2}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->i(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/j;->e:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-static {v2}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->i(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;->e()V

    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/j;->e:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-static {v2}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->i(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "flybird_fp_val_failed"

    invoke-static {v5}, Lcom/alipay/android/app/util/ResUtils;->g(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "\u8f6c\u5bc6\u7801\u652f\u4ed8["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v4, v11}, Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;->a(Ljava/lang/String;II)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/j;->e:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->i(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;

    move-result-object v0

    const/16 v2, 0x258

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;->a(I)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/j;->e:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->a(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;)Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/j;->e:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    const-string/jumbo v2, "fp"

    sget-object v3, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Bncb:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    const-string/jumbo v4, "(\'status=0004\')"

    invoke-virtual {v0, v2, v3, v4}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->a(Ljava/lang/String;Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/j;->e:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->a()V

    :cond_1
    :goto_3
    :sswitch_0
    instance-of v0, v1, Landroid/content/Intent;

    if-eqz v0, :cond_2

    const-string/jumbo v2, "Monitor"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onReceive:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v1

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void

    :sswitch_1
    const-string/jumbo v0, "data"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v8, "vendor"

    invoke-virtual {p2, v8, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "protocolVersion"

    invoke-virtual {p2, v9, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "protocolType"

    invoke-virtual {p2, v10, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "deviceId"

    invoke-virtual {p2, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "fingerpwd"

    invoke-virtual {v5, v12, v0}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "forcePwd"

    invoke-virtual {v5, v0, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "vendor"

    invoke-virtual {v5, v0, v8}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "protocolVersion"

    invoke-virtual {v5, v0, v9}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "protocolType"

    invoke-virtual {v5, v0, v10}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "deviceId"

    invoke-virtual {v5, v0, v11}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/j;->e:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    const-string/jumbo v2, "fp"

    sget-object v8, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Bncb:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    const-string/jumbo v9, "(\'status=0003\')"

    invoke-virtual {v0, v2, v8, v9}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->a(Ljava/lang/String;Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/j;->e:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->i(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/j;->e:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->i(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;

    move-result-object v0

    const-string/jumbo v2, "flybird_fp_val_ok"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->g(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/high16 v8, -0x1000000

    invoke-virtual {v0, v2, v4, v8}, Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;->a(Ljava/lang/String;II)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/j;->e:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->i(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;->c()V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/j;->e:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->i(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;->a(I)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/j;->e:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->a(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;)Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;

    move v0, v3

    :goto_4
    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/j;->e:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    iget-object v3, p0, Lcom/alipay/android/app/flybird/ui/j;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/alipay/android/app/flybird/ui/j;->b:Lcom/alipay/android/app/json/JSONObject;

    invoke-static {v5, v4}, Lcom/alipay/android/app/util/JsonUtils;->a(Lcom/alipay/android/app/json/JSONObject;Lcom/alipay/android/app/json/JSONObject;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v4

    invoke-virtual {v2, v3, v4, p0, v0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->a(Ljava/lang/String;Lcom/alipay/android/app/json/JSONObject;Landroid/content/BroadcastReceiver;I)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/j;->e:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->a()V

    goto/16 :goto_3

    :cond_3
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/j;->e:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->e(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/j;->e:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->e(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->e()V

    :cond_4
    move v0, v4

    goto :goto_4

    :sswitch_2
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/j;->e:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->l(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/j;->e:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    const-string/jumbo v2, "fp"

    sget-object v3, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Bncb:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    const-string/jumbo v4, "(\'status=0009\')"

    invoke-virtual {v0, v2, v3, v4}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->a(Ljava/lang/String;Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/j;->e:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->a()V

    goto/16 :goto_3

    :sswitch_3
    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/j;->e:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-static {v2}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->m(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)I

    goto/16 :goto_2

    :cond_5
    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/j;->e:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-static {v2}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->i(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/j;->e:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-static {v2}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->i(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;->e()V

    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/j;->e:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-static {v2}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->i(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "flybird_fp_val_failed"

    invoke-static {v5}, Lcom/alipay/android/app/util/ResUtils;->g(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v4, v11}, Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;->a(Ljava/lang/String;II)V

    :cond_6
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/j;->e:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->o(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)I

    invoke-static {}, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->a()Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;

    move-result-object v0

    new-array v2, v10, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/alipay/android/app/flybird/ui/j;->c:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {v0, p1, v10, v2}, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->a(Landroid/content/Context;I[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/j;->e:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->i(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;

    move-result-object v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/j;->d:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/j;->e:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    const-string/jumbo v2, "fp"

    sget-object v3, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Bncb:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    const-string/jumbo v4, "(\'status=0005\')"

    invoke-virtual {v0, v2, v3, v4}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->a(Ljava/lang/String;Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_7
    move v0, v2

    goto/16 :goto_0

    :cond_8
    move v0, v2

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_1
        0x66 -> :sswitch_2
        0x71 -> :sswitch_3
        0x79 -> :sswitch_0
    .end sparse-switch
.end method
