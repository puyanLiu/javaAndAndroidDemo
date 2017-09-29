.class Lcom/alipay/android/app/hardwarepay/bracelet/activity/y;
.super Landroid/content/BroadcastReceiver;


# static fields
.field private static final b:Lorg/aspectj/lang/JoinPoint$StaticPart;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/x;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    .line 1
    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string/jumbo v1, "<Unknown>"

    const-class v2, Lcom/alipay/android/app/hardwarepay/bracelet/activity/y;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "onReceive"

    const-string/jumbo v3, "com.alipay.android.app.hardwarepay.bracelet.activity.HardwareHandleActivity$9$1"

    const-string/jumbo v4, "android.content.Context:android.content.Intent"

    const-string/jumbo v5, "arg0:arg1"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x264

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/y;->b:Lorg/aspectj/lang/JoinPoint$StaticPart;

    return-void
.end method

.method constructor <init>(Lcom/alipay/android/app/hardwarepay/bracelet/activity/x;)V
    .locals 0

    .prologue
    .line 609
    iput-object p1, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/y;->a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/x;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x0

    const/4 v8, 0x2

    .line 1
    sget-object v0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/y;->b:Lorg/aspectj/lang/JoinPoint$StaticPart;

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

    aget-object v1, v1, v0

    const-string/jumbo v0, "result"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->d()V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v0, "scan"

    aget-object v5, v4, v9

    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/y;->a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/x;

    iget-object v0, v0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/x;->a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;

    invoke-static {v0}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->n(Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;)Lcom/alipay/android/app/ui/quickpay/widget/NoScrollListview;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/y;->a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/x;

    iget-object v0, v0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/x;->a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;

    invoke-static {v0}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->e(Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;)Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/y;->a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/x;

    iget-object v0, v0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/x;->a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;

    invoke-static {v0}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->f(Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_0
    :goto_0
    instance-of v0, v1, Landroid/content/Intent;

    if-eqz v0, :cond_1

    const-string/jumbo v4, "Monitor"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "onReceive:"

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

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

    invoke-interface {v2, v4, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/y;->a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/x;

    iget-object v0, v0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/x;->a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;

    invoke-static {v0}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->f(Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$a;

    invoke-virtual {v0}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$a;->c()Ljava/lang/String;

    move-result-object v0

    aget-object v6, v4, v8

    invoke-static {v0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/y;->a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/x;

    iget-object v0, v0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/x;->a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;

    invoke-static {v0}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->h(Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$a;

    invoke-virtual {v0}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$a;->c()Ljava/lang/String;

    move-result-object v0

    aget-object v6, v4, v8

    invoke-static {v0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_4
    new-instance v0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$a;

    iget-object v5, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/y;->a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/x;

    iget-object v5, v5, Lcom/alipay/android/app/hardwarepay/bracelet/activity/x;->a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;

    invoke-direct {v0, v5, v9}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$a;-><init>(Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;B)V

    aget-object v5, v4, v8

    invoke-virtual {v0, v5}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$a;->c(Ljava/lang/String;)V

    aget-object v5, v4, v10

    invoke-virtual {v0, v5}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$a;->a(Ljava/lang/String;)V

    const/4 v5, 0x4

    aget-object v4, v4, v5

    invoke-virtual {v0, v4}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$a;->b(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/y;->a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/x;

    iget-object v4, v4, Lcom/alipay/android/app/hardwarepay/bracelet/activity/x;->a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;

    new-instance v5, Lcom/alipay/android/app/hardwarepay/bracelet/activity/z;

    invoke-direct {v5, p0, v0}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/z;-><init>(Lcom/alipay/android/app/hardwarepay/bracelet/activity/y;Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$a;)V

    invoke-virtual {v4, v5}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v0, "connected"

    aget-object v5, v4, v9

    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/y;->a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/x;

    iget-object v0, v0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/x;->a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;

    invoke-static {v0}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->h(Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/y;->a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/x;

    iget-object v0, v0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/x;->a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v5}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->b(Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;Ljava/util/List;)Ljava/util/List;

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->d()V

    :cond_6
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/y;->a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/x;

    iget-object v0, v0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/x;->a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;

    invoke-static {v0}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->h(Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$a;

    invoke-virtual {v0}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$a;->c()Ljava/lang/String;

    move-result-object v6

    aget-object v7, v4, v8

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "bracelet deivce alread added."

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->d()V

    goto/16 :goto_0

    :cond_8
    new-instance v0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$a;

    iget-object v5, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/y;->a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/x;

    iget-object v5, v5, Lcom/alipay/android/app/hardwarepay/bracelet/activity/x;->a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;

    invoke-direct {v0, v5, v9}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$a;-><init>(Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;B)V

    const-string/jumbo v5, ""

    invoke-virtual {v0, v5}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$a;->b(Ljava/lang/String;)V

    aget-object v5, v4, v10

    invoke-virtual {v0, v5}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$a;->a(Ljava/lang/String;)V

    aget-object v4, v4, v8

    invoke-virtual {v0, v4}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$a;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->d()V

    iget-object v4, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/y;->a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/x;

    iget-object v4, v4, Lcom/alipay/android/app/hardwarepay/bracelet/activity/x;->a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;

    new-instance v5, Lcom/alipay/android/app/hardwarepay/bracelet/activity/aa;

    invoke-direct {v5, p0, v0}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/aa;-><init>(Lcom/alipay/android/app/hardwarepay/bracelet/activity/y;Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$a;)V

    invoke-virtual {v4, v5}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method
