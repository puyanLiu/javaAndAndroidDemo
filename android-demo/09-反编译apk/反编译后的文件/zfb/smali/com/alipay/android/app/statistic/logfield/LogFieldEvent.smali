.class public Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;
.super Lcom/alipay/android/app/statistic/logfield/LogField;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/statistic/logfield/LogFieldEvent$UnPackageState;,
        Lcom/alipay/android/app/statistic/logfield/LogFieldEvent$PackageState;
    }
.end annotation


# static fields
.field private static e:J

.field private static f:I


# instance fields
.field private g:I

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->e:J

    .line 27
    const/4 v0, 0x0

    sput v0, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->f:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    const-string/jumbo v0, "event"

    invoke-direct {p0, v0}, Lcom/alipay/android/app/statistic/logfield/LogField;-><init>(Ljava/lang/String;)V

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->g:I

    .line 46
    const-string/jumbo v0, "-"

    iput-object v0, p0, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->h:Ljava/lang/String;

    .line 47
    const-string/jumbo v0, "-"

    iput-object v0, p0, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->i:Ljava/lang/String;

    .line 48
    const-string/jumbo v0, "-"

    iput-object v0, p0, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->j:Ljava/lang/String;

    .line 49
    const-string/jumbo v0, "-"

    iput-object v0, p0, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->k:Ljava/lang/String;

    .line 50
    const-string/jumbo v0, "-"

    iput-object v0, p0, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->l:Ljava/lang/String;

    .line 51
    const-string/jumbo v0, "-"

    iput-object v0, p0, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->m:Ljava/lang/String;

    .line 52
    const-string/jumbo v0, "-"

    iput-object v0, p0, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->n:Ljava/lang/String;

    .line 53
    const-string/jumbo v0, "-"

    iput-object v0, p0, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->o:Ljava/lang/String;

    .line 54
    const-string/jumbo v0, "-"

    iput-object v0, p0, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->p:Ljava/lang/String;

    .line 55
    const-string/jumbo v0, "-"

    iput-object v0, p0, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->q:Ljava/lang/String;

    .line 56
    const-string/jumbo v0, "-"

    iput-object v0, p0, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->r:Ljava/lang/String;

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->a:Z

    .line 61
    sget v0, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->f:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->f:I

    .line 62
    sget v0, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->f:I

    iput v0, p0, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->g:I

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;-><init>()V

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->h:Ljava/lang/String;

    .line 72
    sget v0, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->f:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->f:I

    .line 73
    sget v0, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->f:I

    iput v0, p0, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->g:I

    .line 74
    return-void
.end method

.method public static e()V
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    sput v0, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->f:I

    .line 67
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 162
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->h:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->l:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->i:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->j:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->o:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->q:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->k:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->p:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->m:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->n:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->r:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->h:Ljava/lang/String;

    .line 84
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->e:J

    .line 85
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 99
    iput-object p1, p0, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->i:Ljava/lang/String;

    .line 100
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->e:J

    .line 101
    return-void
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->g:I

    return v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->j:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 108
    invoke-static {p1}, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->k:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->m:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public final f()V
    .locals 5

    .prologue
    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->e:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->l:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public final f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->n:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public final g()V
    .locals 5

    .prologue
    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->e:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->p:Ljava/lang/String;

    .line 139
    return-void
.end method

.method public final g(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->r:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public final h(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 128
    iput-object p1, p0, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->o:Ljava/lang/String;

    .line 130
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->e:J

    .line 131
    return-void
.end method

.method public final i(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->q:Ljava/lang/String;

    .line 135
    return-void
.end method
