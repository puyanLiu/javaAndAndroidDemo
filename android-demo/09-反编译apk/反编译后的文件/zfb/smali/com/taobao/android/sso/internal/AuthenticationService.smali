.class public Lcom/taobao/android/sso/internal/AuthenticationService;
.super Landroid/app/Service;


# static fields
.field private static final synthetic b:Lorg/aspectj/lang/JoinPoint$StaticPart;


# instance fields
.field private a:Lcom/taobao/android/sso/internal/Authenticator;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string/jumbo v1, "AuthenticationService.java"

    const-class v2, Lcom/taobao/android/sso/internal/AuthenticationService;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "onBind"

    const-string/jumbo v3, "com.taobao.android.sso.internal.AuthenticationService"

    const-string/jumbo v4, "android.content.Intent"

    const-string/jumbo v5, "intent"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "android.os.IBinder"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x16

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/taobao/android/sso/internal/AuthenticationService;->b:Lorg/aspectj/lang/JoinPoint$StaticPart;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private static final synthetic a(Lcom/taobao/android/sso/internal/AuthenticationService;Lcom/alipay/mobile/aspect/AspectAdvice;Lorg/aspectj/lang/JoinPoint;)Ljava/lang/Object;
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

    const/16 v16, 0x0

    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/alipay/mobile/aspect/AspectAdvice;->ajc$inlineAccessFieldGet$com_alipay_mobile_aspect_AspectAdvice$com_alipay_mobile_aspect_AspectAdvice$aspectProcessor(Lcom/alipay/mobile/aspect/AspectAdvice;)Lcom/alipay/mobile/aspect/AspectProcessor;

    move-result-object v1

    invoke-virtual/range {v1 .. v9}, Lcom/alipay/mobile/aspect/AspectProcessor;->prepareAspect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/taobao/android/sso/internal/AuthenticationService;->a:Lcom/taobao/android/sso/internal/Authenticator;

    invoke-virtual {v1}, Lcom/taobao/android/sso/internal/Authenticator;->getIBinder()Landroid/os/IBinder;

    move-result-object v16

    invoke-static/range {p1 .. p1}, Lcom/alipay/mobile/aspect/AspectAdvice;->ajc$inlineAccessFieldGet$com_alipay_mobile_aspect_AspectAdvice$com_alipay_mobile_aspect_AspectAdvice$aspectProcessor(Lcom/alipay/mobile/aspect/AspectAdvice;)Lcom/alipay/mobile/aspect/AspectProcessor;

    move-result-object v10

    move-object v11, v2

    move-object v12, v3

    move-object v13, v4

    move-object v14, v5

    move-object v15, v6

    move-object/from16 v17, v7

    move-object/from16 v18, v8

    move-object/from16 v19, v9

    invoke-virtual/range {v10 .. v19}, Lcom/alipay/mobile/aspect/AspectProcessor;->doAspect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v16

    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    sget-object v0, Lcom/taobao/android/sso/internal/AuthenticationService;->b:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0, p1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/aspect/AspectAdvice;->aspectOf()Lcom/alipay/mobile/aspect/AspectAdvice;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lcom/taobao/android/sso/internal/AuthenticationService;->a(Lcom/taobao/android/sso/internal/AuthenticationService;Lcom/alipay/mobile/aspect/AspectAdvice;Lorg/aspectj/lang/JoinPoint;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    new-instance v0, Lcom/taobao/android/sso/internal/Authenticator;

    invoke-direct {v0, p0}, Lcom/taobao/android/sso/internal/Authenticator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/taobao/android/sso/internal/AuthenticationService;->a:Lcom/taobao/android/sso/internal/Authenticator;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/android/sso/internal/AuthenticationService;->a:Lcom/taobao/android/sso/internal/Authenticator;

    return-void
.end method
