.class Lcom/taobao/android/ssologinwrapper/SsoLogin$AccountChangedReceiver;
.super Landroid/content/BroadcastReceiver;


# static fields
.field private static final synthetic b:Lorg/aspectj/lang/JoinPoint$StaticPart;


# instance fields
.field private a:Lcom/taobao/android/ssologinwrapper/SsoLogin$LoginStatusFetcher;

.field final synthetic this$0:Lcom/taobao/android/ssologinwrapper/SsoLogin;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string/jumbo v1, "SsoLogin.java"

    const-class v2, Lcom/taobao/android/ssologinwrapper/SsoLogin$AccountChangedReceiver;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "onReceive"

    const-string/jumbo v3, "com.taobao.android.ssologinwrapper.SsoLogin$AccountChangedReceiver"

    const-string/jumbo v4, "android.content.Context:android.content.Intent"

    const-string/jumbo v5, "context:intent"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x221

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/taobao/android/ssologinwrapper/SsoLogin$AccountChangedReceiver;->b:Lorg/aspectj/lang/JoinPoint$StaticPart;

    return-void
.end method

.method public constructor <init>(Lcom/taobao/android/ssologinwrapper/SsoLogin;Lcom/taobao/android/ssologinwrapper/SsoLogin$LoginStatusFetcher;)V
    .locals 0

    iput-object p1, p0, Lcom/taobao/android/ssologinwrapper/SsoLogin$AccountChangedReceiver;->this$0:Lcom/taobao/android/ssologinwrapper/SsoLogin;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p2, p0, Lcom/taobao/android/ssologinwrapper/SsoLogin$AccountChangedReceiver;->a:Lcom/taobao/android/ssologinwrapper/SsoLogin$LoginStatusFetcher;

    return-void
.end method

.method private static final synthetic a(Lcom/taobao/android/ssologinwrapper/SsoLogin$AccountChangedReceiver;Lcom/alipay/mobile/aspect/AspectAdvice;Lorg/aspectj/lang/JoinPoint;)Ljava/lang/Object;
    .locals 20

    invoke-interface/range {p2 .. p2}, Lorg/aspectj/lang/JoinPoint;->getKind()Ljava/lang/String;

    move-result-object v2

    invoke-interface/range {p2 .. p2}, Lorg/aspectj/lang/JoinPoint;->getSignature()Lorg/aspectj/lang/Signature;

    move-result-object v1

    invoke-interface {v1}, Lorg/aspectj/lang/Signature;->getDeclaringTypeName()Ljava/lang/String;

    move-result-object v3

    invoke-interface/range {p2 .. p2}, Lorg/aspectj/lang/JoinPoint;->getSignature()Lorg/aspectj/lang/Signature;

    move-result-object v1

    invoke-interface {v1}, Lorg/aspectj/lang/Signature;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface/range {p2 .. p2}, Lorg/aspectj/lang/JoinPoint;->getSignature()Lorg/aspectj/lang/Signature;

    move-result-object v1

    invoke-interface {v1}, Lorg/aspectj/lang/Signature;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface/range {p2 .. p2}, Lorg/aspectj/lang/JoinPoint;->getSourceLocation()Lorg/aspectj/lang/reflect/SourceLocation;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {p2 .. p2}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v7

    invoke-interface/range {p2 .. p2}, Lorg/aspectj/lang/JoinPoint;->getTarget()Ljava/lang/Object;

    move-result-object v8

    invoke-interface/range {p2 .. p2}, Lorg/aspectj/lang/JoinPoint;->getArgs()[Ljava/lang/Object;

    move-result-object v9

    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/alipay/mobile/aspect/AspectAdvice;->ajc$inlineAccessFieldGet$com_alipay_mobile_aspect_AspectAdvice$com_alipay_mobile_aspect_AspectAdvice$aspectProcessor(Lcom/alipay/mobile/aspect/AspectAdvice;)Lcom/alipay/mobile/aspect/AspectProcessor;

    move-result-object v1

    invoke-virtual/range {v1 .. v9}, Lcom/alipay/mobile/aspect/AspectProcessor;->prepareAspect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/taobao/android/ssologinwrapper/SsoLogin$AccountChangedReceiver;->this$0:Lcom/taobao/android/ssologinwrapper/SsoLogin;

    invoke-static {v1}, Lcom/taobao/android/ssologinwrapper/SsoLogin;->access$700(Lcom/taobao/android/ssologinwrapper/SsoLogin;)Lcom/taobao/android/sso/SsoStatesChangedListener;

    move-result-object v1

    if-eqz v1, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0xb

    if-le v1, v10, :cond_2

    new-instance v1, Lcom/taobao/android/ssologinwrapper/SsoLogin$EventProcesser;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/taobao/android/ssologinwrapper/SsoLogin$AccountChangedReceiver;->this$0:Lcom/taobao/android/ssologinwrapper/SsoLogin;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/taobao/android/ssologinwrapper/SsoLogin$AccountChangedReceiver;->this$0:Lcom/taobao/android/ssologinwrapper/SsoLogin;

    invoke-static {v11}, Lcom/taobao/android/ssologinwrapper/SsoLogin;->access$604(Lcom/taobao/android/ssologinwrapper/SsoLogin;)I

    move-result v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/taobao/android/ssologinwrapper/SsoLogin$AccountChangedReceiver;->a:Lcom/taobao/android/ssologinwrapper/SsoLogin$LoginStatusFetcher;

    invoke-direct {v1, v10, v11, v12}, Lcom/taobao/android/ssologinwrapper/SsoLogin$EventProcesser;-><init>(Lcom/taobao/android/ssologinwrapper/SsoLogin;ILcom/taobao/android/ssologinwrapper/SsoLogin$LoginStatusFetcher;)V

    sget-object v10, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Void;

    invoke-virtual {v1, v10, v11}, Lcom/taobao/android/ssologinwrapper/SsoLogin$EventProcesser;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    :goto_0
    invoke-static/range {p1 .. p1}, Lcom/alipay/mobile/aspect/AspectAdvice;->ajc$inlineAccessFieldGet$com_alipay_mobile_aspect_AspectAdvice$com_alipay_mobile_aspect_AspectAdvice$aspectProcessor(Lcom/alipay/mobile/aspect/AspectAdvice;)Lcom/alipay/mobile/aspect/AspectProcessor;

    move-result-object v10

    const/16 v16, 0x0

    move-object v11, v2

    move-object v12, v3

    move-object v13, v4

    move-object v14, v5

    move-object v15, v6

    move-object/from16 v17, v7

    move-object/from16 v18, v8

    move-object/from16 v19, v9

    invoke-virtual/range {v10 .. v19}, Lcom/alipay/mobile/aspect/AspectProcessor;->doAspect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    :cond_1
    :goto_1
    const/4 v1, 0x0

    return-object v1

    :cond_2
    new-instance v1, Lcom/taobao/android/ssologinwrapper/SsoLogin$EventProcesser;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/taobao/android/ssologinwrapper/SsoLogin$AccountChangedReceiver;->this$0:Lcom/taobao/android/ssologinwrapper/SsoLogin;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/taobao/android/ssologinwrapper/SsoLogin$AccountChangedReceiver;->this$0:Lcom/taobao/android/ssologinwrapper/SsoLogin;

    invoke-static {v11}, Lcom/taobao/android/ssologinwrapper/SsoLogin;->access$604(Lcom/taobao/android/ssologinwrapper/SsoLogin;)I

    move-result v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/taobao/android/ssologinwrapper/SsoLogin$AccountChangedReceiver;->a:Lcom/taobao/android/ssologinwrapper/SsoLogin$LoginStatusFetcher;

    invoke-direct {v1, v10, v11, v12}, Lcom/taobao/android/ssologinwrapper/SsoLogin$EventProcesser;-><init>(Lcom/taobao/android/ssologinwrapper/SsoLogin;ILcom/taobao/android/ssologinwrapper/SsoLogin$LoginStatusFetcher;)V

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Void;

    invoke-virtual {v1, v10}, Lcom/taobao/android/ssologinwrapper/SsoLogin$EventProcesser;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    sget-object v0, Lcom/taobao/android/ssologinwrapper/SsoLogin$AccountChangedReceiver;->b:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0, p1, p2}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/aspect/AspectAdvice;->aspectOf()Lcom/alipay/mobile/aspect/AspectAdvice;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lcom/taobao/android/ssologinwrapper/SsoLogin$AccountChangedReceiver;->a(Lcom/taobao/android/ssologinwrapper/SsoLogin$AccountChangedReceiver;Lcom/alipay/mobile/aspect/AspectAdvice;Lorg/aspectj/lang/JoinPoint;)Ljava/lang/Object;

    return-void
.end method
