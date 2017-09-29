.class public final Lnet/lingala/zip4j/progress/a;
.super Ljava/lang/Object;
.source "ProgressMonitor.java"


# instance fields
.field private a:I

.field private b:J

.field private c:J

.field private d:I

.field private e:I

.field private f:Ljava/lang/String;

.field private g:I

.field private h:Ljava/lang/Throwable;

.field private i:Z

.field private j:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-direct {p0}, Lnet/lingala/zip4j/progress/a;->g()V

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lnet/lingala/zip4j/progress/a;->d:I

    .line 59
    return-void
.end method

.method private g()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 151
    const/4 v0, -0x1

    iput v0, p0, Lnet/lingala/zip4j/progress/a;->e:I

    .line 152
    iput v1, p0, Lnet/lingala/zip4j/progress/a;->a:I

    .line 153
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/lingala/zip4j/progress/a;->f:Ljava/lang/String;

    .line 154
    iput-wide v2, p0, Lnet/lingala/zip4j/progress/a;->b:J

    .line 155
    iput-wide v2, p0, Lnet/lingala/zip4j/progress/a;->c:J

    .line 156
    iput v1, p0, Lnet/lingala/zip4j/progress/a;->d:I

    .line 157
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lnet/lingala/zip4j/progress/a;->a:I

    return v0
.end method

.method public final a(I)V
    .locals 0

    .prologue
    .line 66
    iput p1, p0, Lnet/lingala/zip4j/progress/a;->a:I

    .line 67
    return-void
.end method

.method public final a(J)V
    .locals 0

    .prologue
    .line 74
    iput-wide p1, p0, Lnet/lingala/zip4j/progress/a;->b:J

    .line 75
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lnet/lingala/zip4j/progress/a;->f:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 145
    invoke-direct {p0}, Lnet/lingala/zip4j/progress/a;->g()V

    .line 146
    const/4 v0, 0x2

    iput v0, p0, Lnet/lingala/zip4j/progress/a;->g:I

    .line 147
    iput-object p1, p0, Lnet/lingala/zip4j/progress/a;->h:Ljava/lang/Throwable;

    .line 148
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    iput v0, p0, Lnet/lingala/zip4j/progress/a;->d:I

    .line 105
    return-void
.end method

.method public final b(J)V
    .locals 5

    .prologue
    const/16 v4, 0x64

    .line 82
    iget-wide v0, p0, Lnet/lingala/zip4j/progress/a;->c:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lnet/lingala/zip4j/progress/a;->c:J

    .line 84
    iget-wide v0, p0, Lnet/lingala/zip4j/progress/a;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 85
    iget-wide v0, p0, Lnet/lingala/zip4j/progress/a;->c:J

    const-wide/16 v2, 0x64

    mul-long/2addr v0, v2

    iget-wide v2, p0, Lnet/lingala/zip4j/progress/a;->b:J

    div-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lnet/lingala/zip4j/progress/a;->d:I

    .line 86
    iget v0, p0, Lnet/lingala/zip4j/progress/a;->d:I

    if-le v0, v4, :cond_0

    .line 87
    iput v4, p0, Lnet/lingala/zip4j/progress/a;->d:I

    .line 90
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lnet/lingala/zip4j/progress/a;->j:Z

    if-eqz v0, :cond_1

    .line 92
    const-wide/16 v0, 0x96

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 95
    :catch_0
    move-exception v0

    goto :goto_0

    .line 97
    :cond_1
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x3

    iput v0, p0, Lnet/lingala/zip4j/progress/a;->g:I

    .line 113
    return-void
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x1

    iput v0, p0, Lnet/lingala/zip4j/progress/a;->e:I

    .line 129
    return-void
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 140
    invoke-direct {p0}, Lnet/lingala/zip4j/progress/a;->g()V

    .line 141
    const/4 v0, 0x0

    iput v0, p0, Lnet/lingala/zip4j/progress/a;->g:I

    .line 142
    return-void
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 166
    iget-boolean v0, p0, Lnet/lingala/zip4j/progress/a;->i:Z

    return v0
.end method
