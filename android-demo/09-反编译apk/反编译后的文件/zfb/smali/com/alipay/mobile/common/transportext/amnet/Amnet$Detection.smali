.class Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;
.super Lcom/alipay/mobile/common/transportext/mnet/SslClient;
.source "Amnet.java"


# instance fields
.field private bin:[B

.field private cb:Lcom/alipay/mobile/common/transportext/amnet/NetTest;

.field private chance:I

.field private description:Ljava/lang/String;

.field private detect:Lcom/alipay/mobile/common/transportext/amnet/Configuration$DetectInf;

.field private group:[Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;

.field private mark:J

.field private name:Ljava/lang/String;

.field private offset:I

.field private proxy:Lcom/alipay/mobile/common/transportext/amnet/Configuration$Address;

.field private server:Lcom/alipay/mobile/common/transportext/amnet/Configuration$Address;

.field final synthetic this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

.field private timer:Lcom/alipay/mobile/common/transportext/amnet/Amnet$DetectTmr;

.field private tmRtt:J

.field private tmSsl:J

.field private tmTcp:J

.field private valIp:Ljava/lang/String;

.field private valPort:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/amnet/Configuration$DetectInf;Lcom/alipay/mobile/common/transportext/amnet/Configuration$Address;[Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;Lcom/alipay/mobile/common/transportext/amnet/NetTest;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 3376
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/mnet/SslClient;-><init>()V

    .line 3377
    iput-object p2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->detect:Lcom/alipay/mobile/common/transportext/amnet/Configuration$DetectInf;

    .line 3378
    iput-object p3, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->proxy:Lcom/alipay/mobile/common/transportext/amnet/Configuration$Address;

    .line 3379
    iput-object p4, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->group:[Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;

    .line 3380
    new-instance v0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$DetectTmr;

    invoke-direct {v0, p1, p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$DetectTmr;-><init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->timer:Lcom/alipay/mobile/common/transportext/amnet/Amnet$DetectTmr;

    .line 3381
    iput-object p5, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->cb:Lcom/alipay/mobile/common/transportext/amnet/NetTest;

    .line 3382
    iget v0, p2, Lcom/alipay/mobile/common/transportext/amnet/Configuration$DetectInf;->trying:I

    iput v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->chance:I

    .line 3384
    iget-object v0, p2, Lcom/alipay/mobile/common/transportext/amnet/Configuration$DetectInf;->ip:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p2, Lcom/alipay/mobile/common/transportext/amnet/Configuration$DetectInf;->domain:Ljava/lang/String;

    :goto_0
    iget v2, p2, Lcom/alipay/mobile/common/transportext/amnet/Configuration$DetectInf;->protocol:I

    if-ne v2, v1, :cond_3

    :goto_1
    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$7200(Ljava/lang/String;Z)Lcom/alipay/mobile/common/transportext/amnet/Configuration$Address;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->server:Lcom/alipay/mobile/common/transportext/amnet/Configuration$Address;

    .line 3386
    iget v0, p2, Lcom/alipay/mobile/common/transportext/amnet/Configuration$DetectInf;->port:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 3387
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->server:Lcom/alipay/mobile/common/transportext/amnet/Configuration$Address;

    iget v1, p2, Lcom/alipay/mobile/common/transportext/amnet/Configuration$DetectInf;->port:I

    iput v1, v0, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Address;->port:I

    .line 3390
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->server:Lcom/alipay/mobile/common/transportext/amnet/Configuration$Address;

    iget-object v1, v1, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Address;->ip:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->server:Lcom/alipay/mobile/common/transportext/amnet/Configuration$Address;

    iget v1, v1, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Address;->port:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->name:Ljava/lang/String;

    .line 3391
    if-eqz p3, :cond_1

    .line 3392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " through proxy-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->name:Ljava/lang/String;

    .line 3393
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p3, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Address;->ip:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p3, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Address;->port:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->name:Ljava/lang/String;

    .line 3395
    :cond_1
    return-void

    .line 3384
    :cond_2
    iget-object v0, p2, Lcom/alipay/mobile/common/transportext/amnet/Configuration$DetectInf;->ip:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private errStart(ILjava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 3850
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    const-string/jumbo v2, "-AMNET-DETECT"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-ne p1, v4, :cond_0

    const-string/jumbo v0, " (memory)"

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v4, v2, v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$100(Lcom/alipay/mobile/common/transportext/amnet/Amnet;ILjava/lang/String;Ljava/lang/String;)V

    .line 3854
    return-void

    .line 3850
    :cond_0
    const-string/jumbo v0, " (system)"

    goto :goto_0
.end method

.method private errStop(ZZLjava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 3858
    if-eqz p1, :cond_0

    .line 3859
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    const-string/jumbo v1, "-AMNET-DETECT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " (memory)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v4, v1, v2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$100(Lcom/alipay/mobile/common/transportext/amnet/Amnet;ILjava/lang/String;Ljava/lang/String;)V

    .line 3864
    :cond_0
    if-eqz p2, :cond_1

    .line 3865
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    const-string/jumbo v1, "-AMNET-DETECT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " (system)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v4, v1, v2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$100(Lcom/alipay/mobile/common/transportext/amnet/Amnet;ILjava/lang/String;Ljava/lang/String;)V

    .line 3869
    :cond_1
    return-void
.end method

.method private finish(ZZ)V
    .locals 7

    .prologue
    const-wide/16 v5, 0x0

    const/4 v4, 0x1

    .line 3970
    if-eqz p2, :cond_0

    .line 3971
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->cb:Lcom/alipay/mobile/common/transportext/amnet/NetTest;

    const/4 v1, 0x0

    invoke-interface {v0, v4, p1, v4, v1}, Lcom/alipay/mobile/common/transportext/amnet/NetTest;->report(ZZZLjava/lang/String;)V

    .line 3987
    :goto_0
    return-void

    .line 3973
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->valIp:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string/jumbo v0, "-;"

    .line 3974
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->valPort:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string/jumbo v0, "-;"

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3975
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p1, :cond_3

    const-string/jumbo v0, "y;"

    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3976
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3977
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->description:Ljava/lang/String;

    if-nez v0, :cond_4

    const-string/jumbo v0, "-;"

    :goto_4
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3978
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->detect:Lcom/alipay/mobile/common/transportext/amnet/Configuration$DetectInf;

    iget v0, v0, Lcom/alipay/mobile/common/transportext/amnet/Configuration$DetectInf;->protocol:I

    if-ne v0, v4, :cond_5

    const-string/jumbo v0, "ssl;"

    :goto_5
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3980
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->tmTcp:J

    cmp-long v0, v2, v5

    if-gez v0, :cond_6

    const-string/jumbo v0, "-;"

    :goto_6
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3982
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->tmSsl:J

    cmp-long v0, v2, v5

    if-gez v0, :cond_7

    const-string/jumbo v0, "-;"

    :goto_7
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3984
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->tmRtt:J

    cmp-long v0, v2, v5

    if-gez v0, :cond_8

    const-string/jumbo v0, "-"

    :goto_8
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3985
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->cb:Lcom/alipay/mobile/common/transportext/amnet/NetTest;

    const/4 v2, 0x0

    invoke-interface {v1, v4, p1, v2, v0}, Lcom/alipay/mobile/common/transportext/amnet/NetTest;->report(ZZZLjava/lang/String;)V

    goto/16 :goto_0

    .line 3973
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->valIp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 3974
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->valPort:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 3975
    :cond_3
    const-string/jumbo v0, "n;"

    goto/16 :goto_3

    .line 3977
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->description:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    .line 3978
    :cond_5
    const-string/jumbo v0, "tcp;"

    goto/16 :goto_5

    .line 3980
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->tmTcp:J

    invoke-static {v2, v3}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$2200(J)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_6

    .line 3982
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->tmSsl:J

    invoke-static {v2, v3}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$2200(J)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_7

    .line 3984
    :cond_8
    iget-wide v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->tmRtt:J

    invoke-static {v2, v3}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$2200(J)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_8
.end method

.method private inData([B)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x1

    .line 3873
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->bin:[B

    if-nez v0, :cond_1

    .line 3875
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->detect:Lcom/alipay/mobile/common/transportext/amnet/Configuration$DetectInf;

    iget-object v0, v0, Lcom/alipay/mobile/common/transportext/amnet/Configuration$DetectInf;->response:Ljava/lang/String;

    const-string/jumbo v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->bin:[B

    .line 3876
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->bin:[B

    if-nez v0, :cond_1

    .line 3877
    const-string/jumbo v0, "Can not convert response."

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->again(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 3913
    :cond_0
    :goto_0
    return-void

    .line 3880
    :catch_0
    move-exception v0

    .line 3881
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Fail to convert response. ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->again(Ljava/lang/String;)V

    goto :goto_0

    .line 3886
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->bin:[B

    array-length v0, v0

    iget v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->offset:I

    sub-int/2addr v0, v1

    .line 3887
    array-length v1, p1

    if-ge v1, v0, :cond_2

    .line 3888
    array-length v0, p1

    :cond_2
    move v1, v2

    .line 3891
    :goto_1
    if-ge v1, v0, :cond_4

    .line 3892
    aget-byte v3, p1, v1

    iget-object v4, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->bin:[B

    iget v5, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->offset:I

    add-int/2addr v5, v1

    aget-byte v4, v4, v5

    if-eq v3, v4, :cond_3

    .line 3893
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->putRtt()V

    .line 3894
    const-string/jumbo v0, "The response does not match."

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->again(Ljava/lang/String;)V

    goto :goto_0

    .line 3891
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3899
    :cond_4
    iget v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->offset:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->offset:I

    .line 3900
    iget v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->offset:I

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->bin:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 3901
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->putRtt()V

    .line 3902
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    const-string/jumbo v1, "-AMNET-DETECT"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "The detection to "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " is passed."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v6, v1, v3}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$100(Lcom/alipay/mobile/common/transportext/amnet/Amnet;ILjava/lang/String;Ljava/lang/String;)V

    .line 3905
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->cb:Lcom/alipay/mobile/common/transportext/amnet/NetTest;

    if-eqz v0, :cond_5

    .line 3906
    const-string/jumbo v0, "OK"

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->description:Ljava/lang/String;

    .line 3907
    invoke-direct {p0, v6, v2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->finish(ZZ)V

    .line 3910
    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0, v6}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$7502(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Z)Z

    .line 3911
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->stop()V

    goto/16 :goto_0
.end method

.method private outGrp()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 3917
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->group:[Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;

    if-eqz v0, :cond_5

    move v0, v1

    move v2, v3

    .line 3919
    :goto_0
    iget-object v4, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->group:[Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;

    array-length v4, v4

    if-ge v0, v4, :cond_2

    .line 3920
    iget-object v4, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->group:[Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;

    aget-object v4, v4, v0

    if-ne v4, p0, :cond_1

    .line 3921
    iget-object v4, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->group:[Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;

    aput-object v5, v4, v0

    .line 3919
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3922
    :cond_1
    iget-object v4, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->group:[Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;

    aget-object v4, v4, v0

    if-eqz v4, :cond_0

    move v2, v1

    .line 3923
    goto :goto_1

    .line 3927
    :cond_2
    if-eqz v2, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->group:[Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$5500(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)[Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;

    move-result-object v1

    if-ne v0, v1, :cond_4

    .line 3928
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0, v5}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$5502(Lcom/alipay/mobile/common/transportext/amnet/Amnet;[Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;)[Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;

    .line 3929
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->cb:Lcom/alipay/mobile/common/transportext/amnet/NetTest;

    if-eqz v0, :cond_3

    .line 3930
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$7500(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Z

    move-result v0

    invoke-direct {p0, v0, v3}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->finish(ZZ)V

    .line 3933
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$7500(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3934
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    const-string/jumbo v1, "-AMNET-DETECT"

    const-string/jumbo v2, "The network should be OK."

    invoke-static {v0, v3, v1, v2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$100(Lcom/alipay/mobile/common/transportext/amnet/Amnet;ILjava/lang/String;Ljava/lang/String;)V

    .line 3958
    :cond_4
    :goto_2
    iput-object v5, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->group:[Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;

    .line 3960
    :cond_5
    return-void

    .line 3938
    :cond_6
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    const/4 v1, 0x2

    const-string/jumbo v2, "-AMNET-DETECT"

    const-string/jumbo v3, "The network may not be available."

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$100(Lcom/alipay/mobile/common/transportext/amnet/Amnet;ILjava/lang/String;Ljava/lang/String;)V

    .line 3941
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$5700(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$300(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    move-result-object v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$7600(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$7700(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$4900(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$2700(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3946
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$5200(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)V

    .line 3947
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$4500(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Amnet$RetryTmr;

    move-result-object v1

    const-string/jumbo v2, "reconnect"

    const/16 v3, 0x708

    invoke-static {v3}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$2900(I)J

    move-result-wide v3

    invoke-static/range {v0 .. v5}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$3000(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/mnet/Plan;Ljava/lang/String;JLcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 3952
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$4600(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)V

    goto :goto_2
.end method

.method private putRtt()V
    .locals 6

    .prologue
    .line 3964
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 3965
    iget-wide v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->tmRtt:J

    iget-wide v4, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->mark:J

    sub-long v4, v0, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->tmRtt:J

    .line 3966
    iput-wide v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->mark:J

    .line 3967
    return-void
.end method

.method private startLnk()Z
    .locals 3

    .prologue
    .line 3774
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->proxy:Lcom/alipay/mobile/common/transportext/amnet/Configuration$Address;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->server:Lcom/alipay/mobile/common/transportext/amnet/Configuration$Address;

    .line 3775
    :goto_0
    iget-object v1, v0, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Address;->ip:Ljava/lang/String;

    iget v0, v0, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Address;->port:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->open(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 3777
    if-nez v0, :cond_1

    .line 3778
    const/4 v0, 0x1

    .line 3783
    :goto_1
    return v0

    .line 3774
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->proxy:Lcom/alipay/mobile/common/transportext/amnet/Configuration$Address;

    goto :goto_0

    .line 3781
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Can not open the detection to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3782
    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->errStart(ILjava/lang/String;)V

    .line 3783
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private startTmr()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 3788
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->timer:Lcom/alipay/mobile/common/transportext/amnet/Amnet$DetectTmr;

    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->detect:Lcom/alipay/mobile/common/transportext/amnet/Configuration$DetectInf;

    iget v2, v2, Lcom/alipay/mobile/common/transportext/amnet/Configuration$DetectInf;->waiting:I

    invoke-static {v2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$2900(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$DetectTmr;->open(JZ)I

    move-result v1

    .line 3789
    if-nez v1, :cond_0

    .line 3790
    const/4 v0, 0x1

    .line 3797
    :goto_0
    return v0

    .line 3793
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Can not open the timer for the detection to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3796
    invoke-direct {p0, v1, v2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->errStart(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private stopLnk()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 3802
    const/16 v2, 0x64

    move v3, v2

    move v2, v0

    .line 3806
    :goto_0
    add-int/lit8 v4, v3, -0x1

    if-eqz v3, :cond_1

    .line 3807
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->close()I

    move-result v3

    .line 3808
    if-eqz v3, :cond_1

    .line 3809
    const/4 v5, 0x3

    if-ne v3, v5, :cond_0

    move v2, v1

    move v3, v4

    .line 3811
    goto :goto_0

    :cond_0
    move v0, v1

    move v3, v4

    .line 3815
    goto :goto_0

    .line 3817
    :cond_1
    if-gez v4, :cond_2

    .line 3818
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Can not close the detection to "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3819
    invoke-direct {p0, v2, v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->errStop(ZZLjava/lang/String;)V

    .line 3821
    :cond_2
    return-void
.end method

.method private stopTmr()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 3825
    const/16 v2, 0x64

    move v3, v2

    move v2, v0

    .line 3829
    :goto_0
    add-int/lit8 v4, v3, -0x1

    if-eqz v3, :cond_1

    .line 3830
    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->timer:Lcom/alipay/mobile/common/transportext/amnet/Amnet$DetectTmr;

    invoke-virtual {v3}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$DetectTmr;->close()I

    move-result v3

    .line 3831
    if-eqz v3, :cond_1

    .line 3832
    const/4 v5, 0x3

    if-ne v3, v5, :cond_0

    move v2, v1

    move v3, v4

    .line 3834
    goto :goto_0

    :cond_0
    move v0, v1

    move v3, v4

    .line 3838
    goto :goto_0

    .line 3840
    :cond_1
    if-gez v4, :cond_2

    .line 3841
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Can not close the timer for the detection to "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3844
    invoke-direct {p0, v2, v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->errStop(ZZLjava/lang/String;)V

    .line 3846
    :cond_2
    return-void
.end method


# virtual methods
.method public again(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 3603
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    const/4 v1, 0x3

    const-string/jumbo v2, "-AMNET-DETECT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$100(Lcom/alipay/mobile/common/transportext/amnet/Amnet;ILjava/lang/String;Ljava/lang/String;)V

    .line 3604
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->stopLnk()V

    .line 3605
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->stopTmr()V

    .line 3606
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->cb:Lcom/alipay/mobile/common/transportext/amnet/NetTest;

    if-eqz v0, :cond_0

    .line 3607
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->description:Ljava/lang/String;

    .line 3608
    invoke-direct {p0, v5, v5}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->finish(ZZ)V

    .line 3611
    :cond_0
    iget v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->chance:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 3612
    iget v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->chance:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->chance:I

    .line 3613
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->start()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3619
    :goto_0
    return-void

    .line 3618
    :cond_1
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->outGrp()V

    goto :goto_0
.end method

.method protected asyncErrorAddress(JILjava/lang/String;)V
    .locals 8

    .prologue
    .line 3712
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$200(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Mercury;

    move-result-object v7

    new-instance v0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$DetectErrNoEvent;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    move-object v2, p0

    move-wide v3, p1

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$DetectErrNoEvent;-><init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;JILjava/lang/String;)V

    invoke-interface {v7, v0}, Lcom/alipay/mobile/common/transportext/amnet/Mercury;->post(Ljava/lang/Runnable;)V

    .line 3713
    return-void
.end method

.method protected asyncErrorHandshake(JLjava/lang/String;)V
    .locals 7

    .prologue
    .line 3757
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$200(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Mercury;

    move-result-object v6

    new-instance v0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$DetectErrEvent;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$DetectErrEvent;-><init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;JLjava/lang/String;)V

    invoke-interface {v6, v0}, Lcom/alipay/mobile/common/transportext/amnet/Mercury;->post(Ljava/lang/Runnable;)V

    .line 3758
    return-void
.end method

.method protected asyncErrorIo(JLjava/lang/String;)V
    .locals 7

    .prologue
    .line 3763
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$200(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Mercury;

    move-result-object v6

    new-instance v0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$DetectErrEvent;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$DetectErrEvent;-><init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;JLjava/lang/String;)V

    invoke-interface {v6, v0}, Lcom/alipay/mobile/common/transportext/amnet/Mercury;->post(Ljava/lang/Runnable;)V

    .line 3764
    return-void
.end method

.method protected asyncErrorLink(JILjava/lang/String;)V
    .locals 8

    .prologue
    .line 3718
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$200(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Mercury;

    move-result-object v7

    new-instance v0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$DetectErrNoEvent;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    move-object v2, p0

    move-wide v3, p1

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$DetectErrNoEvent;-><init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;JILjava/lang/String;)V

    invoke-interface {v7, v0}, Lcom/alipay/mobile/common/transportext/amnet/Mercury;->post(Ljava/lang/Runnable;)V

    .line 3719
    return-void
.end method

.method protected asyncErrorMemory(JLjava/lang/String;)V
    .locals 7

    .prologue
    .line 3657
    if-nez p3, :cond_0

    .line 3658
    const-string/jumbo v5, "(memory)"

    .line 3661
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$200(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Mercury;

    move-result-object v6

    new-instance v0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$DetectErrEvent;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    move-object v2, p0

    move-wide v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$DetectErrEvent;-><init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;JLjava/lang/String;)V

    invoke-interface {v6, v0}, Lcom/alipay/mobile/common/transportext/amnet/Mercury;->post(Ljava/lang/Runnable;)V

    .line 3662
    return-void

    :cond_0
    move-object v5, p3

    goto :goto_0
.end method

.method protected asyncErrorReceive(JILjava/lang/String;)V
    .locals 8

    .prologue
    .line 3724
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$200(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Mercury;

    move-result-object v7

    new-instance v0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$DetectErrNoEvent;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    move-object v2, p0

    move-wide v3, p1

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$DetectErrNoEvent;-><init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;JILjava/lang/String;)V

    invoke-interface {v7, v0}, Lcom/alipay/mobile/common/transportext/amnet/Mercury;->post(Ljava/lang/Runnable;)V

    .line 3725
    return-void
.end method

.method protected asyncErrorSend(JILjava/lang/String;)V
    .locals 8

    .prologue
    .line 3730
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$200(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Mercury;

    move-result-object v7

    new-instance v0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$DetectErrNoEvent;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    move-object v2, p0

    move-wide v3, p1

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$DetectErrNoEvent;-><init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;JILjava/lang/String;)V

    invoke-interface {v7, v0}, Lcom/alipay/mobile/common/transportext/amnet/Mercury;->post(Ljava/lang/Runnable;)V

    .line 3731
    return-void
.end method

.method protected asyncErrorShutdown(JLjava/lang/String;)V
    .locals 7

    .prologue
    .line 3769
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$200(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Mercury;

    move-result-object v6

    new-instance v0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$DetectErrEvent;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$DetectErrEvent;-><init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;JLjava/lang/String;)V

    invoke-interface {v6, v0}, Lcom/alipay/mobile/common/transportext/amnet/Mercury;->post(Ljava/lang/Runnable;)V

    .line 3770
    return-void
.end method

.method protected asyncErrorSystem(JILjava/lang/String;)V
    .locals 8

    .prologue
    .line 3651
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$200(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Mercury;

    move-result-object v7

    new-instance v0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$DetectErrNoEvent;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    move-object v2, p0

    move-wide v3, p1

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$DetectErrNoEvent;-><init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;JILjava/lang/String;)V

    invoke-interface {v7, v0}, Lcom/alipay/mobile/common/transportext/amnet/Mercury;->post(Ljava/lang/Runnable;)V

    .line 3652
    return-void
.end method

.method protected asyncNoticeActivity(J)V
    .locals 0

    .prologue
    .line 3695
    return-void
.end method

.method protected asyncNoticeAddr(JLjava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 3667
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$200(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Mercury;

    move-result-object v7

    new-instance v0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$DetectAddrNotice;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$DetectAddrNotice;-><init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;JLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v0}, Lcom/alipay/mobile/common/transportext/amnet/Mercury;->post(Ljava/lang/Runnable;)V

    .line 3668
    return-void
.end method

.method protected asyncNoticeBroken(J)V
    .locals 3

    .prologue
    .line 3688
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$200(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Mercury;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/common/transportext/amnet/Amnet$DetectBrokenNotice;

    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-direct {v1, v2, p0, p1, p2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$DetectBrokenNotice;-><init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;J)V

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Mercury;->post(Ljava/lang/Runnable;)V

    .line 3689
    return-void
.end method

.method protected asyncNoticeData(J[B)V
    .locals 7

    .prologue
    .line 3700
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$200(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Mercury;

    move-result-object v6

    new-instance v0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$DetectDataNotice;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$DetectDataNotice;-><init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;J[B)V

    invoke-interface {v6, v0}, Lcom/alipay/mobile/common/transportext/amnet/Mercury;->post(Ljava/lang/Runnable;)V

    .line 3701
    return-void
.end method

.method protected asyncNoticeHandshaked(JZ[B[B)V
    .locals 8

    .prologue
    .line 3739
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$200(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Mercury;

    move-result-object v7

    new-instance v0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$DetectHandshakedNotice;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$DetectHandshakedNotice;-><init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;J[B[B)V

    invoke-interface {v7, v0}, Lcom/alipay/mobile/common/transportext/amnet/Mercury;->post(Ljava/lang/Runnable;)V

    .line 3740
    return-void
.end method

.method protected asyncNoticeLinked(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .prologue
    .line 3677
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$200(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Mercury;

    move-result-object v9

    new-instance v0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$DetectLinkedNotice;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$DetectLinkedNotice;-><init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v0}, Lcom/alipay/mobile/common/transportext/amnet/Mercury;->post(Ljava/lang/Runnable;)V

    .line 3683
    return-void
.end method

.method protected asyncNoticePosted(JI)V
    .locals 0

    .prologue
    .line 3752
    return-void
.end method

.method protected asyncNoticeSent(JI)V
    .locals 0

    .prologue
    .line 3707
    return-void
.end method

.method protected asyncNoticeShutdown(J)V
    .locals 3

    .prologue
    .line 3745
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$200(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Mercury;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/common/transportext/amnet/Amnet$DetectShutdownNotice;

    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-direct {v1, v2, p0, p1, p2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$DetectShutdownNotice;-><init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;J)V

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Mercury;->post(Ljava/lang/Runnable;)V

    .line 3746
    return-void
.end method

.method public check([B)V
    .locals 9

    .prologue
    const/16 v8, 0x54

    const/16 v7, 0xd

    const/16 v6, 0xa

    const/4 v5, 0x4

    const/4 v1, 0x0

    .line 3498
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->proxy:Lcom/alipay/mobile/common/transportext/amnet/Configuration$Address;

    if-eqz v0, :cond_d

    .line 3499
    iget v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->offset:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_d

    .line 3501
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->bin:[B

    if-nez v0, :cond_1

    .line 3502
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->bin:[B

    .line 3517
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->bin:[B

    array-length v0, v0

    if-lt v0, v5, :cond_8

    .line 3519
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->bin:[B

    array-length v0, v0

    add-int/lit8 v3, v0, -0x3

    move v2, v1

    .line 3522
    :goto_1
    if-ge v2, v3, :cond_4

    .line 3523
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->bin:[B

    aget-byte v0, v0, v2

    if-ne v0, v7, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->bin:[B

    add-int/lit8 v4, v2, 0x1

    aget-byte v0, v0, v4

    if-ne v0, v6, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->bin:[B

    add-int/lit8 v4, v2, 0x2

    aget-byte v0, v0, v4

    if-ne v0, v7, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->bin:[B

    add-int/lit8 v4, v2, 0x3

    aget-byte v0, v0, v4

    if-eq v0, v6, :cond_4

    .line 3528
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 3504
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->bin:[B

    array-length v0, v0

    array-length v2, p1

    add-int/2addr v0, v2

    new-array v2, v0, [B

    move v0, v1

    .line 3505
    :goto_2
    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->bin:[B

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 3506
    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->bin:[B

    aget-byte v3, v3, v0

    aput-byte v3, v2, v0

    .line 3505
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    move v0, v1

    .line 3509
    :goto_3
    array-length v3, p1

    if-ge v0, v3, :cond_3

    .line 3510
    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->bin:[B

    array-length v3, v3

    add-int/2addr v3, v0

    aget-byte v4, p1, v0

    aput-byte v4, v2, v3

    .line 3509
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 3513
    :cond_3
    iput-object v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->bin:[B

    goto :goto_0

    .line 3532
    :cond_4
    if-ge v2, v3, :cond_8

    move v0, v1

    .line 3535
    :goto_4
    if-ge v0, v2, :cond_5

    .line 3536
    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->bin:[B

    aget-byte v3, v3, v0

    invoke-static {v3}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$7300(B)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3537
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 3542
    :cond_5
    sub-int v3, v2, v0

    const/4 v4, 0x5

    if-lt v3, v4, :cond_c

    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->bin:[B

    aget-byte v3, v3, v0

    const/16 v4, 0x48

    if-ne v3, v4, :cond_c

    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->bin:[B

    add-int/lit8 v4, v0, 0x1

    aget-byte v3, v3, v4

    if-ne v3, v8, :cond_c

    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->bin:[B

    add-int/lit8 v4, v0, 0x2

    aget-byte v3, v3, v4

    if-ne v3, v8, :cond_c

    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->bin:[B

    add-int/lit8 v4, v0, 0x3

    aget-byte v3, v3, v4

    const/16 v4, 0x50

    if-ne v3, v4, :cond_c

    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->bin:[B

    add-int/lit8 v4, v0, 0x4

    aget-byte v3, v3, v4

    const/16 v4, 0x2f

    if-ne v3, v4, :cond_c

    .line 3549
    add-int/lit8 v0, v0, 0x5

    :goto_5
    if-ge v0, v2, :cond_6

    .line 3550
    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->bin:[B

    aget-byte v3, v3, v0

    invoke-static {v3}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$7300(B)Z

    move-result v3

    if-nez v3, :cond_6

    .line 3551
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 3555
    :cond_6
    if-ge v0, v2, :cond_b

    .line 3557
    :goto_6
    if-ge v0, v2, :cond_7

    .line 3558
    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->bin:[B

    aget-byte v3, v3, v0

    .line 3559
    invoke-static {v3}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$7300(B)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 3560
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 3565
    :cond_7
    sub-int/2addr v2, v0

    if-lt v2, v5, :cond_a

    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->bin:[B

    aget-byte v2, v2, v0

    invoke-static {v2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$7400(B)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->bin:[B

    add-int/lit8 v3, v0, 0x1

    aget-byte v2, v2, v3

    invoke-static {v2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$7400(B)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->bin:[B

    add-int/lit8 v3, v0, 0x2

    aget-byte v2, v2, v3

    invoke-static {v2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$7400(B)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->bin:[B

    add-int/lit8 v3, v0, 0x3

    aget-byte v2, v2, v3

    invoke-static {v2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$7300(B)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 3570
    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->bin:[B

    aget-byte v2, v2, v0

    add-int/lit8 v2, v2, -0x30

    .line 3571
    mul-int/lit8 v2, v2, 0xa

    .line 3572
    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->bin:[B

    add-int/lit8 v4, v0, 0x1

    aget-byte v3, v3, v4

    add-int/lit8 v3, v3, -0x30

    add-int/2addr v2, v3

    .line 3573
    mul-int/lit8 v2, v2, 0xa

    .line 3574
    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->bin:[B

    add-int/lit8 v0, v0, 0x2

    aget-byte v0, v3, v0

    add-int/lit8 v0, v0, -0x30

    add-int/2addr v0, v2

    .line 3575
    const/16 v2, 0xc8

    if-lt v0, v2, :cond_9

    const/16 v2, 0x12c

    if-ge v0, v2, :cond_9

    .line 3576
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->bin:[B

    .line 3577
    iput v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->offset:I

    .line 3578
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->putTcp()V

    .line 3579
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->execute(Z)V

    .line 3599
    :cond_8
    :goto_7
    return-void

    .line 3581
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "The proxy replies "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->again(Ljava/lang/String;)V

    goto :goto_7

    .line 3586
    :cond_a
    const-string/jumbo v0, "Phony reply."

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->again(Ljava/lang/String;)V

    goto :goto_7

    .line 3589
    :cond_b
    const-string/jumbo v0, "Incorrect reply."

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->again(Ljava/lang/String;)V

    goto :goto_7

    .line 3592
    :cond_c
    const-string/jumbo v0, "Wrong reply."

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->again(Ljava/lang/String;)V

    goto :goto_7

    .line 3597
    :cond_d
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->inData([B)V

    goto :goto_7
.end method

.method public execute(Z)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3471
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->detect:Lcom/alipay/mobile/common/transportext/amnet/Configuration$DetectInf;

    iget v0, v0, Lcom/alipay/mobile/common/transportext/amnet/Configuration$DetectInf;->protocol:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 3472
    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->handshake(ILjava/lang/String;Ljava/lang/String;[B[B)I

    move-result v0

    const-string/jumbo v1, "Can not do SSL handshake."

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->judge(ILjava/lang/String;)V

    .line 3494
    :goto_0
    return-void

    .line 3479
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->cb:Lcom/alipay/mobile/common/transportext/amnet/NetTest;

    if-eqz v0, :cond_1

    .line 3480
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->cb:Lcom/alipay/mobile/common/transportext/amnet/NetTest;

    invoke-interface {v0, v1, v1, v1, v2}, Lcom/alipay/mobile/common/transportext/amnet/NetTest;->report(ZZZLjava/lang/String;)V

    .line 3484
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->detect:Lcom/alipay/mobile/common/transportext/amnet/Configuration$DetectInf;

    iget-object v0, v0, Lcom/alipay/mobile/common/transportext/amnet/Configuration$DetectInf;->request:Ljava/lang/String;

    const-string/jumbo v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 3485
    if-nez v0, :cond_2

    .line 3486
    const-string/jumbo v0, "Can not convert request."

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->again(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3490
    :catch_0
    move-exception v0

    .line 3491
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Fail to convert request. ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->again(Ljava/lang/String;)V

    goto :goto_0

    .line 3488
    :cond_2
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->send([B)I

    move-result v0

    const-string/jumbo v1, "Can not send request."

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->judge(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public getGroup()[Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;
    .locals 1

    .prologue
    .line 3444
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->group:[Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;

    return-object v0
.end method

.method public getProxy()Lcom/alipay/mobile/common/transportext/amnet/Configuration$Address;
    .locals 1

    .prologue
    .line 3434
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->proxy:Lcom/alipay/mobile/common/transportext/amnet/Configuration$Address;

    return-object v0
.end method

.method public getServer()Lcom/alipay/mobile/common/transportext/amnet/Configuration$Address;
    .locals 1

    .prologue
    .line 3439
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->server:Lcom/alipay/mobile/common/transportext/amnet/Configuration$Address;

    return-object v0
.end method

.method public judge(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 3633
    if-eqz p1, :cond_1

    .line 3634
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 3635
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " (memory)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 3644
    :cond_0
    :goto_0
    invoke-virtual {p0, p2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->again(Ljava/lang/String;)V

    .line 3646
    :cond_1
    return-void

    .line 3636
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 3637
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " (system)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 3638
    :cond_3
    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    .line 3639
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " (entry)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 3640
    :cond_4
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 3641
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " (argument)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method public over(J)V
    .locals 5

    .prologue
    .line 3623
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->timer:Lcom/alipay/mobile/common/transportext/amnet/Amnet$DetectTmr;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$DetectTmr;->identification()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 3624
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    const/4 v1, 0x1

    const-string/jumbo v2, "-AMNET-TMR-DETECT"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "I\'m the timer for detecting "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$100(Lcom/alipay/mobile/common/transportext/amnet/Amnet;ILjava/lang/String;Ljava/lang/String;)V

    .line 3627
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->stop()V

    .line 3629
    :cond_0
    return-void
.end method

.method public putServer(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 3449
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->cb:Lcom/alipay/mobile/common/transportext/amnet/NetTest;

    if-eqz v0, :cond_0

    .line 3450
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->valIp:Ljava/lang/String;

    .line 3451
    iput-object p2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->valPort:Ljava/lang/String;

    .line 3453
    :cond_0
    return-void
.end method

.method public putSsl()V
    .locals 6

    .prologue
    .line 3464
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 3465
    iget-wide v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->tmSsl:J

    iget-wide v4, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->mark:J

    sub-long v4, v0, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->tmSsl:J

    .line 3466
    iput-wide v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->mark:J

    .line 3467
    return-void
.end method

.method public putTcp()V
    .locals 6

    .prologue
    .line 3457
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 3458
    iget-wide v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->tmTcp:J

    iget-wide v4, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->mark:J

    sub-long v4, v0, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->tmTcp:J

    .line 3459
    iput-wide v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->mark:J

    .line 3460
    return-void
.end method

.method public start()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    const-wide/16 v4, -0x1

    const/4 v2, 0x0

    .line 3399
    iput-object v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->bin:[B

    .line 3400
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->proxy:Lcom/alipay/mobile/common/transportext/amnet/Configuration$Address;

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    iput v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->offset:I

    .line 3401
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->cb:Lcom/alipay/mobile/common/transportext/amnet/NetTest;

    if-eqz v0, :cond_0

    .line 3402
    iput-object v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->valIp:Ljava/lang/String;

    .line 3403
    iput-object v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->valPort:Ljava/lang/String;

    .line 3404
    iput-object v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->description:Ljava/lang/String;

    .line 3405
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->mark:J

    .line 3406
    iput-wide v4, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->tmTcp:J

    .line 3407
    iput-wide v4, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->tmSsl:J

    .line 3408
    iput-wide v4, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->tmRtt:J

    .line 3411
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->startTmr()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3412
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->startLnk()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3413
    const/4 v1, 0x1

    .line 3422
    :goto_1
    return v1

    .line 3400
    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    .line 3416
    :cond_2
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->stopTmr()V

    .line 3419
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    const/4 v2, 0x3

    const-string/jumbo v3, "-AMNET-DETECT"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Can not detect "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$100(Lcom/alipay/mobile/common/transportext/amnet/Amnet;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public stop()V
    .locals 0

    .prologue
    .line 3427
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->stopLnk()V

    .line 3428
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->stopTmr()V

    .line 3429
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->outGrp()V

    .line 3430
    return-void
.end method
