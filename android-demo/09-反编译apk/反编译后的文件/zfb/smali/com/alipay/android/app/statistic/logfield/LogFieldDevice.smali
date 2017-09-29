.class public Lcom/alipay/android/app/statistic/logfield/LogFieldDevice;
.super Lcom/alipay/android/app/statistic/logfield/LogField;


# instance fields
.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    const-string/jumbo v0, "device"

    invoke-direct {p0, v0}, Lcom/alipay/android/app/statistic/logfield/LogField;-><init>(Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lcom/alipay/android/app/statistic/logfield/LogFieldDevice;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/app/statistic/logfield/LogFieldDevice;->m:Ljava/lang/String;

    .line 29
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/app/statistic/logfield/LogFieldDevice;->n:Ljava/lang/String;

    .line 9
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 115
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alipay/android/app/statistic/logfield/LogFieldDevice;->e:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/alipay/android/app/statistic/logfield/LogFieldDevice;->f:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/alipay/android/app/statistic/logfield/LogFieldDevice;->g:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/alipay/android/app/statistic/logfield/LogFieldDevice;->h:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/alipay/android/app/statistic/logfield/LogFieldDevice;->i:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/alipay/android/app/statistic/logfield/LogFieldDevice;->j:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/alipay/android/app/statistic/logfield/LogFieldDevice;->k:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/alipay/android/app/statistic/logfield/LogFieldDevice;->l:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/alipay/android/app/statistic/logfield/LogFieldDevice;->n:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/alipay/android/app/statistic/logfield/LogFieldDevice;->m:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/statistic/logfield/LogFieldDevice;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 36
    invoke-static {p1}, Lcom/alipay/android/app/statistic/logfield/LogFieldDevice;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/statistic/logfield/LogFieldDevice;->e:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 44
    invoke-static {p1}, Lcom/alipay/android/app/statistic/logfield/LogFieldDevice;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/statistic/logfield/LogFieldDevice;->f:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/alipay/android/app/statistic/logfield/LogFieldDevice;->g:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 60
    invoke-static {p1}, Lcom/alipay/android/app/statistic/logfield/LogFieldDevice;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/statistic/logfield/LogFieldDevice;->h:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public final f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/alipay/android/app/statistic/logfield/LogFieldDevice;->i:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public final g(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/alipay/android/app/statistic/logfield/LogFieldDevice;->j:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public final h(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/alipay/android/app/statistic/logfield/LogFieldDevice;->n:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public final i(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/alipay/android/app/statistic/logfield/LogFieldDevice;->k:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public final j(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/alipay/android/app/statistic/logfield/LogFieldDevice;->l:Ljava/lang/String;

    .line 111
    return-void
.end method
