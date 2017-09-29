.class Lcom/alipay/android/app/hardwarepay/bracelet/activity/v;
.super Landroid/content/BroadcastReceiver;


# static fields
.field private static final b:Lorg/aspectj/lang/JoinPoint$StaticPart;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    .line 1
    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string/jumbo v1, "<Unknown>"

    const-class v2, Lcom/alipay/android/app/hardwarepay/bracelet/activity/v;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "onReceive"

    const-string/jumbo v3, "com.alipay.android.app.hardwarepay.bracelet.activity.HardwareHandleActivity$7"

    const-string/jumbo v4, "android.content.Context:android.content.Intent"

    const-string/jumbo v5, "arg0:arg1"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x22a

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/v;->b:Lorg/aspectj/lang/JoinPoint$StaticPart;

    return-void
.end method

.method constructor <init>(Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;)V
    .locals 0

    .prologue
    .line 551
    iput-object p1, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/v;->a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 1
    sget-object v0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/v;->b:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0, p1, p2}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/aspect/Monitor;->aspectOf()Lcom/alipay/mobile/aspect/Monitor;

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    invoke-interface {v0}, Lorg/aspectj/lang/JoinPoint;->getArgs()[Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v3

    const/4 v0, 0x1

    aget-object v0, v1, v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v4, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, " action:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->d()V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {p2, v1, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-class v5, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " bluetooth state:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "[open is 12]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->d()V

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "package:"

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v6, :cond_1

    const-string/jumbo v4, "package:"

    const-string/jumbo v5, ""

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->d()V

    const-string/jumbo v4, "com.alipay.security.mobile.authenticator"

    invoke-static {v4, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo v4, "com.alipay.security.mobile.authentication.qcom"

    invoke-static {v4, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/v;->a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;

    invoke-static {v1}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->b(Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v4, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/v;->a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;

    invoke-static {v4}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->b(Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->notify()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/v;->a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;

    invoke-static {v1}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->m(Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_3
    instance-of v1, v0, Landroid/content/Intent;

    if-eqz v1, :cond_4

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

    :cond_4
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/v;->a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;

    invoke-static {v1}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->l(Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;)Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/v;->a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;

    invoke-static {v1}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->l(Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;)Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;->dismiss()V

    :cond_5
    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/v;->a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;

    iget-object v4, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/v;->a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;

    const-string/jumbo v5, "mini_bluetooth_open_ok"

    invoke-static {v5}, Lcom/alipay/android/app/util/ResUtils;->g(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v4, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, " \u84dd\u7259\u5f00\u542f\u5b8c\u6210.\u51c6\u5907\u626b\u63cf\u84dd\u7259\u8bbe\u5907 "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->d()V

    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/v;->a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;

    invoke-static {v1}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->d(Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;)V

    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/v;->a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;

    invoke-static {v1}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->m(Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
    .end packed-switch
.end method
