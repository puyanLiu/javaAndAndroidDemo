.class Lcom/alipay/mobile/socialsdk/contact/util/c;
.super Landroid/content/BroadcastReceiver;
.source "SnsLinkUtil.java"


# static fields
.field private static final synthetic d:Lorg/aspectj/lang/JoinPoint$StaticPart;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/contact/util/SnsLinkUtil;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Lcom/alipay/mobile/common/share/ShareContent;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    .line 1
    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string/jumbo v1, "SnsLinkUtil.java"

    const-class v2, Lcom/alipay/mobile/socialsdk/contact/util/c;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "onReceive"

    const-string/jumbo v3, "com.alipay.mobile.socialsdk.contact.util.SnsLinkUtil$2"

    const-string/jumbo v4, "android.content.Context:android.content.Intent"

    const-string/jumbo v5, "_context:_intent"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x5f

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/socialsdk/contact/util/c;->d:Lorg/aspectj/lang/JoinPoint$StaticPart;

    return-void
.end method

.method constructor <init>(Lcom/alipay/mobile/socialsdk/contact/util/SnsLinkUtil;Ljava/lang/String;Lcom/alipay/mobile/common/share/ShareContent;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/util/c;->a:Lcom/alipay/mobile/socialsdk/contact/util/SnsLinkUtil;

    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/contact/util/c;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/socialsdk/contact/util/c;->c:Lcom/alipay/mobile/common/share/ShareContent;

    .line 93
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/socialsdk/contact/util/c;)Lcom/alipay/mobile/socialsdk/contact/util/SnsLinkUtil;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/util/c;->a:Lcom/alipay/mobile/socialsdk/contact/util/SnsLinkUtil;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .prologue
    .line 1
    sget-object v0, Lcom/alipay/mobile/socialsdk/contact/util/c;->d:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0, p1, p2}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/aspect/Monitor;->aspectOf()Lcom/alipay/mobile/aspect/Monitor;

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    invoke-interface {v0}, Lorg/aspectj/lang/JoinPoint;->getArgs()[Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v3

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/util/c;->getResultCode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_0
    instance-of v2, v0, Landroid/content/Intent;

    if-eqz v2, :cond_0

    const-string/jumbo v2, "Monitor"

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

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :pswitch_0
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/util/c;->a:Lcom/alipay/mobile/socialsdk/contact/util/SnsLinkUtil;

    const-string/jumbo v4, "\u77ed\u4fe1\u53d1\u9001\u6210\u529f"

    invoke-static {v2, v4}, Lcom/alipay/mobile/socialsdk/contact/util/SnsLinkUtil;->a(Lcom/alipay/mobile/socialsdk/contact/util/SnsLinkUtil;Ljava/lang/String;)V

    new-instance v2, Lcom/alipay/mobile/socialsdk/contact/util/d;

    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/contact/util/c;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/alipay/mobile/socialsdk/contact/util/c;->c:Lcom/alipay/mobile/common/share/ShareContent;

    invoke-direct {v2, p0, v4, v5}, Lcom/alipay/mobile/socialsdk/contact/util/d;-><init>(Lcom/alipay/mobile/socialsdk/contact/util/c;Ljava/lang/String;Lcom/alipay/mobile/common/share/ShareContent;)V

    invoke-static {v2}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method
