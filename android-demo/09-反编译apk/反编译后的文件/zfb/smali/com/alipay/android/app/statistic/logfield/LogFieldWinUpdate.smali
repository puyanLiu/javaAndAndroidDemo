.class public Lcom/alipay/android/app/statistic/logfield/LogFieldWinUpdate;
.super Lcom/alipay/android/app/statistic/logfield/LogField;


# instance fields
.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    const-string/jumbo v0, "pageUpdate"

    invoke-direct {p0, v0}, Lcom/alipay/android/app/statistic/logfield/LogField;-><init>(Ljava/lang/String;)V

    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/statistic/logfield/LogFieldWinUpdate;->a:Z

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/alipay/android/app/statistic/logfield/LogFieldWinUpdate;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/alipay/android/app/statistic/logfield/LogFieldWinUpdate;->e:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lcom/alipay/android/app/statistic/logfield/LogFieldWinUpdate;->f:Ljava/lang/String;

    .line 31
    iput-object p3, p0, Lcom/alipay/android/app/statistic/logfield/LogFieldWinUpdate;->g:Ljava/lang/String;

    .line 32
    iput-object p4, p0, Lcom/alipay/android/app/statistic/logfield/LogFieldWinUpdate;->h:Ljava/lang/String;

    .line 33
    iput-object p5, p0, Lcom/alipay/android/app/statistic/logfield/LogFieldWinUpdate;->i:Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 38
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alipay/android/app/statistic/logfield/LogFieldWinUpdate;->e:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/alipay/android/app/statistic/logfield/LogFieldWinUpdate;->f:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/alipay/android/app/statistic/logfield/LogFieldWinUpdate;->g:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/alipay/android/app/statistic/logfield/LogFieldWinUpdate;->h:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/alipay/android/app/statistic/logfield/LogFieldWinUpdate;->i:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "-"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/statistic/logfield/LogFieldWinUpdate;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
