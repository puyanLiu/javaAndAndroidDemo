.class Lcom/alipay/mobile/common/transport/http/AndroidHttpClient$LoggingConfiguration;
.super Ljava/lang/Object;
.source "AndroidHttpClient.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I


# direct methods
.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 402
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 403
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient$LoggingConfiguration;->a:Ljava/lang/String;

    .line 404
    iput p2, p0, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient$LoggingConfiguration;->b:I

    .line 405
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/alipay/mobile/common/transport/http/AndroidHttpClient$1;)V
    .locals 0

    .prologue
    .line 397
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient$LoggingConfiguration;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/alipay/mobile/common/transport/http/AndroidHttpClient$LoggingConfiguration;)Z
    .locals 2

    .prologue
    .line 397
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/TransportEnvUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isDebugger(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient$LoggingConfiguration;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x17

    if-le v0, v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient$LoggingConfiguration;->a:Ljava/lang/String;

    iget v1, p0, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient$LoggingConfiguration;->b:I

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    goto :goto_0
.end method

.method static synthetic access$600(Lcom/alipay/mobile/common/transport/http/AndroidHttpClient$LoggingConfiguration;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 397
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/TransportEnvUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isDebugger(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "AndroidHttpClient"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "AndroidHttpClient level=["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient$LoggingConfiguration;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]  tag=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient$LoggingConfiguration;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]  message=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->printInfo(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient$LoggingConfiguration;->b:I

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient$LoggingConfiguration;->a:Ljava/lang/String;

    goto :goto_0
.end method
