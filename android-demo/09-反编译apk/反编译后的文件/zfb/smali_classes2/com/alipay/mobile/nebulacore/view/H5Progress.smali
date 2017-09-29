.class public Lcom/alipay/mobile/nebulacore/view/H5Progress;
.super Landroid/widget/ProgressBar;
.source "H5Progress.java"


# static fields
.field public static final DEFAULT_DURATION:I = 0x4b0

.field public static final MIN_DURATION:I = 0x12c

.field public static final TAG:Ljava/lang/String; = "H5Progress"


# instance fields
.field private a:Lcom/alipay/mobile/nebulacore/view/H5Progress$ProgressNotifier;

.field private b:J

.field private c:J

.field private d:I

.field private e:I

.field private f:I

.field private g:J

.field private h:J

.field private i:I

.field private j:Z

.field private k:Landroid/os/Handler;

.field private l:Lcom/alipay/mobile/nebulacore/view/H5Progress$UpdateRunnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 54
    invoke-direct {p0, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Progress;->j:Z

    .line 148
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Progress;->k:Landroid/os/Handler;

    .line 150
    new-instance v0, Lcom/alipay/mobile/nebulacore/view/H5Progress$UpdateRunnable;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulacore/view/H5Progress$UpdateRunnable;-><init>(Lcom/alipay/mobile/nebulacore/view/H5Progress;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Progress;->l:Lcom/alipay/mobile/nebulacore/view/H5Progress$UpdateRunnable;

    .line 55
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/view/H5Progress;->a()V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Progress;->j:Z

    .line 148
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Progress;->k:Landroid/os/Handler;

    .line 150
    new-instance v0, Lcom/alipay/mobile/nebulacore/view/H5Progress$UpdateRunnable;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulacore/view/H5Progress$UpdateRunnable;-><init>(Lcom/alipay/mobile/nebulacore/view/H5Progress;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Progress;->l:Lcom/alipay/mobile/nebulacore/view/H5Progress$UpdateRunnable;

    .line 60
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/view/H5Progress;->a()V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Progress;->j:Z

    .line 148
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Progress;->k:Landroid/os/Handler;

    .line 150
    new-instance v0, Lcom/alipay/mobile/nebulacore/view/H5Progress$UpdateRunnable;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulacore/view/H5Progress$UpdateRunnable;-><init>(Lcom/alipay/mobile/nebulacore/view/H5Progress;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Progress;->l:Lcom/alipay/mobile/nebulacore/view/H5Progress$UpdateRunnable;

    .line 65
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/view/H5Progress;->a()V

    .line 66
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulacore/view/H5Progress;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Progress;->k:Landroid/os/Handler;

    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 73
    const-wide/16 v0, 0x4b0

    iput-wide v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Progress;->b:J

    .line 74
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulacore/view/H5Progress;->setMax(I)V

    .line 75
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Progress;->i:I

    .line 76
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/view/H5Progress;->b()V

    .line 77
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulacore/view/H5Progress;I)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulacore/view/H5Progress;Z)V
    .locals 0

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/alipay/mobile/nebulacore/view/H5Progress;->j:Z

    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/nebulacore/view/H5Progress;)J
    .locals 2

    .prologue
    .line 30
    iget-wide v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Progress;->c:J

    return-wide v0
.end method

.method private b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 80
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Progress;->g:J

    .line 81
    iput v2, p0, Lcom/alipay/mobile/nebulacore/view/H5Progress;->d:I

    .line 82
    iput v2, p0, Lcom/alipay/mobile/nebulacore/view/H5Progress;->f:I

    .line 83
    iput v2, p0, Lcom/alipay/mobile/nebulacore/view/H5Progress;->e:I

    .line 84
    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/nebulacore/view/H5Progress;I)V
    .locals 0

    .prologue
    .line 34
    iput p1, p0, Lcom/alipay/mobile/nebulacore/view/H5Progress;->e:I

    return-void
.end method

.method static synthetic c(Lcom/alipay/mobile/nebulacore/view/H5Progress;)J
    .locals 2

    .prologue
    .line 40
    iget-wide v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Progress;->h:J

    return-wide v0
.end method

.method static synthetic d(Lcom/alipay/mobile/nebulacore/view/H5Progress;)I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Progress;->f:I

    return v0
.end method

.method static synthetic e(Lcom/alipay/mobile/nebulacore/view/H5Progress;)I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Progress;->d:I

    return v0
.end method

.method static synthetic f(Lcom/alipay/mobile/nebulacore/view/H5Progress;)Lcom/alipay/mobile/nebulacore/view/H5Progress$ProgressNotifier;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Progress;->a:Lcom/alipay/mobile/nebulacore/view/H5Progress$ProgressNotifier;

    return-object v0
.end method

.method static synthetic g(Lcom/alipay/mobile/nebulacore/view/H5Progress;)I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Progress;->i:I

    return v0
.end method

.method static synthetic h(Lcom/alipay/mobile/nebulacore/view/H5Progress;)V
    .locals 1

    .prologue
    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Progress;->i:I

    return-void
.end method

.method static synthetic i(Lcom/alipay/mobile/nebulacore/view/H5Progress;)I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Progress;->e:I

    return v0
.end method

.method static synthetic j(Lcom/alipay/mobile/nebulacore/view/H5Progress;)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/view/H5Progress;->b()V

    return-void
.end method


# virtual methods
.method public hideProgress()V
    .locals 1

    .prologue
    .line 145
    const/16 v0, 0x8

    invoke-super {p0, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 146
    return-void
.end method

.method public setMinDuration(J)V
    .locals 0

    .prologue
    .line 87
    iput-wide p1, p0, Lcom/alipay/mobile/nebulacore/view/H5Progress;->b:J

    .line 88
    return-void
.end method

.method public setNotifier(Lcom/alipay/mobile/nebulacore/view/H5Progress$ProgressNotifier;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/view/H5Progress;->a:Lcom/alipay/mobile/nebulacore/view/H5Progress$ProgressNotifier;

    .line 70
    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Progress;->j:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 138
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 142
    :goto_0
    return-void

    .line 140
    :cond_1
    iput p1, p0, Lcom/alipay/mobile/nebulacore/view/H5Progress;->i:I

    goto :goto_0
.end method

.method public updateProgress(I)V
    .locals 11

    .prologue
    const-wide/16 v9, 0x0

    .line 91
    const-string/jumbo v0, "H5Progress"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "updateProgress "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 93
    iget-wide v2, p0, Lcom/alipay/mobile/nebulacore/view/H5Progress;->g:J

    cmp-long v2, v2, v9

    if-nez v2, :cond_0

    .line 94
    iput-wide v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Progress;->g:J

    .line 97
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/view/H5Progress;->getMax()I

    move-result v2

    .line 98
    int-to-double v3, p1

    const-wide/high16 v5, 0x3fd0000000000000L    # 0.25

    mul-double/2addr v3, v5

    int-to-double v5, v2

    const-wide/high16 v7, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    double-to-int v3, v3

    .line 100
    iget v4, p0, Lcom/alipay/mobile/nebulacore/view/H5Progress;->e:I

    if-lt v3, v4, :cond_1

    if-le v3, v2, :cond_2

    .line 111
    :cond_1
    :goto_0
    return-void

    .line 104
    :cond_2
    iget v2, p0, Lcom/alipay/mobile/nebulacore/view/H5Progress;->e:I

    iput v2, p0, Lcom/alipay/mobile/nebulacore/view/H5Progress;->f:I

    .line 107
    iput-wide v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Progress;->c:J

    .line 108
    iput v3, p0, Lcom/alipay/mobile/nebulacore/view/H5Progress;->d:I

    .line 109
    const-string/jumbo v0, "H5Progress"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "lastTarget is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/alipay/mobile/nebulacore/view/H5Progress;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " targetProgress is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/alipay/mobile/nebulacore/view/H5Progress;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/view/H5Progress;->isIndeterminate()Z

    move-result v0

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Progress;->b:J

    iput-wide v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Progress;->h:J

    iget v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Progress;->d:I

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/view/H5Progress;->getMax()I

    move-result v1

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Progress;->f:I

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/view/H5Progress;->getMax()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    if-le v0, v1, :cond_3

    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Progress;->h:J

    :cond_3
    iget v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Progress;->d:I

    iget v1, p0, Lcom/alipay/mobile/nebulacore/view/H5Progress;->f:I

    sub-int/2addr v0, v1

    if-lez v0, :cond_1

    iget-wide v1, p0, Lcom/alipay/mobile/nebulacore/view/H5Progress;->h:J

    cmp-long v1, v1, v9

    if-lez v1, :cond_1

    iget-wide v1, p0, Lcom/alipay/mobile/nebulacore/view/H5Progress;->h:J

    int-to-long v3, v0

    div-long/2addr v1, v3

    long-to-int v1, v1

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5Progress;->k:Landroid/os/Handler;

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/view/H5Progress;->l:Lcom/alipay/mobile/nebulacore/view/H5Progress$UpdateRunnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5Progress;->l:Lcom/alipay/mobile/nebulacore/view/H5Progress$UpdateRunnable;

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/nebulacore/view/H5Progress$UpdateRunnable;->setPeriodValue(I)V

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5Progress;->l:Lcom/alipay/mobile/nebulacore/view/H5Progress$UpdateRunnable;

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/nebulacore/view/H5Progress$UpdateRunnable;->setdeltaProgressValue(I)V

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Progress;->k:Landroid/os/Handler;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5Progress;->l:Lcom/alipay/mobile/nebulacore/view/H5Progress$UpdateRunnable;

    int-to-long v3, v1

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
