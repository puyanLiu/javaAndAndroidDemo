.class public Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;
.super Landroid/view/View;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/flybird/ui/CustomProgressWheel$ProgressCallback;,
        Lcom/alipay/android/app/flybird/ui/CustomProgressWheel$WheelSavedState;
    }
.end annotation


# static fields
.field private static final z:Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private final d:I

.field private final e:I

.field private f:Z

.field private g:D

.field private h:D

.field private i:F

.field private j:Z

.field private k:J

.field private final l:J

.field private m:I

.field private n:I

.field private o:Landroid/graphics/Paint;

.field private p:Landroid/graphics/Paint;

.field private q:Landroid/graphics/RectF;

.field private r:F

.field private s:J

.field private t:Z

.field private u:F

.field private v:F

.field private w:Z

.field private x:Lcom/alipay/android/app/flybird/ui/CustomProgressWheel$ProgressCallback;

.field private y:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 346
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->z:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/16 v1, 0xa

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 87
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 35
    const/16 v0, 0x69

    iput v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->a:I

    .line 36
    iput v1, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->b:I

    .line 37
    iput v1, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->c:I

    .line 39
    const/16 v0, 0x10

    iput v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->d:I

    .line 40
    const/16 v0, 0x10e

    iput v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->e:I

    .line 42
    iput-boolean v3, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->f:Z

    .line 44
    const-wide v0, 0x407f400000000000L    # 500.0

    iput-wide v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->g:D

    .line 45
    const-wide v0, 0x407cc00000000000L    # 460.0

    iput-wide v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->h:D

    .line 46
    iput v2, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->i:F

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->j:Z

    .line 49
    const-wide/16 v0, 0xd2

    iput-wide v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->k:J

    .line 50
    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->l:J

    .line 53
    const-string/jumbo v0, "#00aaee"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->m:I

    .line 54
    const v0, 0xffffff

    iput v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->n:I

    .line 57
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->o:Landroid/graphics/Paint;

    .line 58
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->p:Landroid/graphics/Paint;

    .line 61
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->q:Landroid/graphics/RectF;

    .line 65
    const/high16 v0, 0x43660000    # 230.0f

    iput v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->r:F

    .line 68
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->s:J

    .line 72
    iput v2, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->u:F

    .line 73
    iput v2, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->v:F

    .line 74
    iput-boolean v3, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->w:Z

    .line 344
    iput-boolean v3, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->y:Z

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const/16 v1, 0xa

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 83
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    const/16 v0, 0x69

    iput v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->a:I

    .line 36
    iput v1, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->b:I

    .line 37
    iput v1, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->c:I

    .line 39
    const/16 v0, 0x10

    iput v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->d:I

    .line 40
    const/16 v0, 0x10e

    iput v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->e:I

    .line 42
    iput-boolean v3, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->f:Z

    .line 44
    const-wide v0, 0x407f400000000000L    # 500.0

    iput-wide v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->g:D

    .line 45
    const-wide v0, 0x407cc00000000000L    # 460.0

    iput-wide v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->h:D

    .line 46
    iput v2, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->i:F

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->j:Z

    .line 49
    const-wide/16 v0, 0xd2

    iput-wide v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->k:J

    .line 50
    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->l:J

    .line 53
    const-string/jumbo v0, "#00aaee"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->m:I

    .line 54
    const v0, 0xffffff

    iput v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->n:I

    .line 57
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->o:Landroid/graphics/Paint;

    .line 58
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->p:Landroid/graphics/Paint;

    .line 61
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->q:Landroid/graphics/RectF;

    .line 65
    const/high16 v0, 0x43660000    # 230.0f

    iput v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->r:F

    .line 68
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->s:J

    .line 72
    iput v2, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->u:F

    .line 73
    iput v2, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->v:F

    .line 74
    iput-boolean v3, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->w:Z

    .line 344
    iput-boolean v3, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->y:Z

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .prologue
    const/16 v1, 0xa

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 79
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    const/16 v0, 0x69

    iput v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->a:I

    .line 36
    iput v1, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->b:I

    .line 37
    iput v1, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->c:I

    .line 39
    const/16 v0, 0x10

    iput v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->d:I

    .line 40
    const/16 v0, 0x10e

    iput v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->e:I

    .line 42
    iput-boolean v3, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->f:Z

    .line 44
    const-wide v0, 0x407f400000000000L    # 500.0

    iput-wide v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->g:D

    .line 45
    const-wide v0, 0x407cc00000000000L    # 460.0

    iput-wide v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->h:D

    .line 46
    iput v2, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->i:F

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->j:Z

    .line 49
    const-wide/16 v0, 0xd2

    iput-wide v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->k:J

    .line 50
    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->l:J

    .line 53
    const-string/jumbo v0, "#00aaee"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->m:I

    .line 54
    const v0, 0xffffff

    iput v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->n:I

    .line 57
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->o:Landroid/graphics/Paint;

    .line 58
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->p:Landroid/graphics/Paint;

    .line 61
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->q:Landroid/graphics/RectF;

    .line 65
    const/high16 v0, 0x43660000    # 230.0f

    iput v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->r:F

    .line 68
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->s:J

    .line 72
    iput v2, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->u:F

    .line 73
    iput v2, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->v:F

    .line 74
    iput-boolean v3, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->w:Z

    .line 344
    iput-boolean v3, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->y:Z

    .line 80
    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 151
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->o:Landroid/graphics/Paint;

    iget v1, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->m:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 152
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->o:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 153
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->o:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 154
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->o:Landroid/graphics/Paint;

    iget v1, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->b:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 156
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->p:Landroid/graphics/Paint;

    iget v1, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->n:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 157
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->p:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 158
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->p:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 159
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->p:Landroid/graphics/Paint;

    iget v1, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->c:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 160
    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 393
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->x:Lcom/alipay/android/app/flybird/ui/CustomProgressWheel$ProgressCallback;

    if-eqz v0, :cond_0

    .line 394
    iget v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->u:F

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x43b40000    # 360.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 395
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->x:Lcom/alipay/android/app/flybird/ui/CustomProgressWheel$ProgressCallback;

    .line 397
    :cond_0
    return-void
.end method


# virtual methods
.method public getBarColor()I
    .locals 1

    .prologue
    .line 577
    iget v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->m:I

    return v0
.end method

.method public getBarWidth()I
    .locals 1

    .prologue
    .line 558
    iget v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->b:I

    return v0
.end method

.method public getCircleRadius()I
    .locals 1

    .prologue
    .line 539
    iget v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->a:I

    return v0
.end method

.method public getProgress()F
    .locals 2

    .prologue
    .line 520
    iget-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->w:Z

    if-eqz v0, :cond_0

    const/high16 v0, -0x40800000    # -1.0f

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->u:F

    const/high16 v1, 0x43b40000    # 360.0f

    div-float/2addr v0, v1

    goto :goto_0
.end method

.method public getRimColor()I
    .locals 1

    .prologue
    .line 597
    iget v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->n:I

    return v0
.end method

.method public getRimWidth()I
    .locals 1

    .prologue
    .line 637
    iget v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->c:I

    return v0
.end method

.method public getSpinSpeed()F
    .locals 2

    .prologue
    .line 619
    iget v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->r:F

    const/high16 v1, 0x43b40000    # 360.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public isSpinning()Z
    .locals 1

    .prologue
    .line 332
    iget-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->w:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    .prologue
    const/4 v6, 0x1

    const/high16 v13, 0x3f800000    # 1.0f

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    const/4 v4, 0x0

    const/high16 v2, 0x43b40000    # 360.0f

    .line 210
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 212
    sget-object v1, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->z:Ljava/lang/Object;

    monitor-enter v1

    .line 213
    :try_start_0
    iget-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->y:Z

    if-nez v0, :cond_1

    .line 214
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 287
    :cond_0
    :goto_0
    return-void

    .line 216
    :cond_1
    monitor-exit v1

    .line 218
    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->q:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->p:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 222
    iget-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->w:Z

    if-eqz v0, :cond_8

    .line 226
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v7, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->s:J

    sub-long/2addr v0, v7

    .line 227
    long-to-float v3, v0

    iget v5, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->r:F

    mul-float/2addr v3, v5

    const/high16 v5, 0x447a0000    # 1000.0f

    div-float/2addr v3, v5

    .line 229
    iget-wide v7, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->k:J

    const-wide/16 v9, 0xc8

    cmp-long v5, v7, v9

    if-ltz v5, :cond_7

    iget-wide v7, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->g:D

    long-to-double v0, v0

    add-double/2addr v0, v7

    iput-wide v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->g:D

    iget-wide v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->g:D

    iget-wide v7, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->h:D

    cmpl-double v0, v0, v7

    if-lez v0, :cond_2

    iget-wide v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->g:D

    iget-wide v7, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->h:D

    sub-double/2addr v0, v7

    iput-wide v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->g:D

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->k:J

    iget-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->j:Z

    if-nez v0, :cond_5

    move v0, v6

    :goto_1
    iput-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->j:Z

    :cond_2
    iget-wide v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->g:D

    iget-wide v7, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->h:D

    div-double/2addr v0, v7

    add-double/2addr v0, v11

    const-wide v7, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v7

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    iget-boolean v1, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->j:Z

    if-eqz v1, :cond_6

    const/high16 v1, 0x437e0000    # 254.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->i:F

    .line 231
    :goto_2
    iget v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->u:F

    add-float/2addr v0, v3

    iput v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->u:F

    .line 232
    iget v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->u:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3

    .line 233
    iget v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->u:F

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->u:F

    .line 238
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->x:Lcom/alipay/android/app/flybird/ui/CustomProgressWheel$ProgressCallback;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->x:Lcom/alipay/android/app/flybird/ui/CustomProgressWheel$ProgressCallback;

    .line 240
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->s:J

    .line 242
    iget v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->u:F

    const/high16 v1, 0x42b40000    # 90.0f

    sub-float v2, v0, v1

    .line 243
    const/high16 v0, 0x41800000    # 16.0f

    iget v1, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->i:F

    add-float v3, v0, v1

    .line 245
    invoke-virtual {p0}, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 246
    const/4 v2, 0x0

    .line 247
    const/high16 v3, 0x43070000    # 135.0f

    .line 250
    :cond_4
    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->q:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->o:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 284
    :goto_3
    if-eqz v6, :cond_0

    .line 285
    invoke-virtual {p0}, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->invalidate()V

    goto/16 :goto_0

    .line 216
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_5
    move v0, v4

    .line 229
    goto :goto_1

    :cond_6
    const/high16 v1, 0x437e0000    # 254.0f

    sub-float v0, v13, v0

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->u:F

    iget v5, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->i:F

    sub-float/2addr v5, v0

    add-float/2addr v1, v5

    iput v1, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->u:F

    iput v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->i:F

    goto :goto_2

    :cond_7
    iget-wide v7, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->k:J

    add-long/2addr v0, v7

    iput-wide v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->k:J

    goto :goto_2

    .line 252
    :cond_8
    iget v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->u:F

    .line 254
    iget v1, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->u:F

    iget v3, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->v:F

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_c

    .line 258
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iget-wide v9, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->s:J

    sub-long/2addr v7, v9

    long-to-float v1, v7

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v1, v3

    .line 259
    iget v3, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->r:F

    mul-float/2addr v1, v3

    .line 261
    iget v3, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->u:F

    add-float/2addr v1, v3

    iget v3, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->v:F

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->u:F

    .line 262
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->s:J

    .line 265
    :goto_4
    iget v1, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->u:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_9

    .line 266
    invoke-direct {p0}, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->b()V

    .line 269
    :cond_9
    const/4 v1, 0x0

    .line 270
    iget v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->u:F

    .line 271
    iget-boolean v3, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->t:Z

    if-nez v3, :cond_b

    .line 272
    iget v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->u:F

    div-float/2addr v0, v2

    sub-float v0, v13, v0

    float-to-double v0, v0

    const-wide/high16 v7, 0x4010000000000000L    # 4.0

    invoke-static {v0, v1, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sub-double v0, v11, v0

    double-to-float v0, v0

    mul-float v1, v0, v2

    .line 274
    iget v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->u:F

    div-float/2addr v0, v2

    sub-float v0, v13, v0

    float-to-double v7, v0

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    sub-double v7, v11, v7

    double-to-float v0, v7

    mul-float/2addr v0, v2

    move v5, v1

    .line 277
    :goto_5
    invoke-virtual {p0}, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_a

    move v3, v2

    .line 281
    :goto_6
    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->q:Landroid/graphics/RectF;

    const/high16 v0, 0x42b40000    # 90.0f

    sub-float v2, v5, v0

    iget-object v5, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->o:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto/16 :goto_3

    :cond_a
    move v3, v0

    goto :goto_6

    :cond_b
    move v5, v1

    goto :goto_5

    :cond_c
    move v6, v4

    goto :goto_4
.end method

.method protected onMeasure(II)V
    .locals 8

    .prologue
    const/high16 v7, -0x80000000

    const/high16 v6, 0x40000000    # 2.0f

    .line 92
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 94
    iget v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->a:I

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->getPaddingRight()I

    move-result v1

    add-int v2, v0, v1

    .line 95
    iget v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->a:I

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    .line 97
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 98
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 99
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 100
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 106
    if-eq v4, v6, :cond_4

    .line 108
    if-ne v4, v7, :cond_0

    .line 111
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 118
    :cond_0
    :goto_0
    if-eq v5, v6, :cond_1

    if-ne v4, v6, :cond_3

    :cond_1
    move v0, v1

    .line 129
    :cond_2
    :goto_1
    invoke-virtual {p0, v2, v0}, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->setMeasuredDimension(II)V

    .line 130
    return-void

    .line 121
    :cond_3
    if-ne v5, v7, :cond_2

    .line 123
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1

    :cond_4
    move v2, v3

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .prologue
    .line 488
    instance-of v0, p1, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel$WheelSavedState;

    if-nez v0, :cond_0

    .line 489
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 509
    :goto_0
    return-void

    .line 493
    :cond_0
    check-cast p1, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel$WheelSavedState;

    .line 494
    invoke-virtual {p1}, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel$WheelSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 496
    iget v0, p1, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel$WheelSavedState;->a:F

    iput v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->u:F

    .line 497
    iget v0, p1, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel$WheelSavedState;->b:F

    iput v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->v:F

    .line 498
    iget-boolean v0, p1, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel$WheelSavedState;->c:Z

    iput-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->w:Z

    .line 499
    iget v0, p1, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel$WheelSavedState;->d:F

    iput v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->r:F

    .line 500
    iget v0, p1, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel$WheelSavedState;->e:I

    iput v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->b:I

    .line 501
    iget v0, p1, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel$WheelSavedState;->f:I

    iput v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->m:I

    .line 502
    iget v0, p1, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel$WheelSavedState;->g:I

    iput v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->c:I

    .line 503
    iget v0, p1, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel$WheelSavedState;->h:I

    iput v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->n:I

    .line 504
    iget v0, p1, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel$WheelSavedState;->i:I

    iput v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->a:I

    .line 505
    iget-boolean v0, p1, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel$WheelSavedState;->j:Z

    iput-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->t:Z

    .line 506
    iget-boolean v0, p1, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel$WheelSavedState;->k:Z

    iput-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->f:Z

    .line 508
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->s:J

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 466
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 468
    new-instance v1, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel$WheelSavedState;

    invoke-direct {v1, v0}, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel$WheelSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 471
    iget v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->u:F

    iput v0, v1, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel$WheelSavedState;->a:F

    .line 472
    iget v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->v:F

    iput v0, v1, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel$WheelSavedState;->b:F

    .line 473
    iget-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->w:Z

    iput-boolean v0, v1, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel$WheelSavedState;->c:Z

    .line 474
    iget v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->r:F

    iput v0, v1, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel$WheelSavedState;->d:F

    .line 475
    iget v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->b:I

    iput v0, v1, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel$WheelSavedState;->e:I

    .line 476
    iget v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->m:I

    iput v0, v1, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel$WheelSavedState;->f:I

    .line 477
    iget v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->c:I

    iput v0, v1, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel$WheelSavedState;->g:I

    .line 478
    iget v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->n:I

    iput v0, v1, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel$WheelSavedState;->h:I

    .line 479
    iget v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->a:I

    iput v0, v1, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel$WheelSavedState;->i:I

    .line 480
    iget-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->t:Z

    iput-boolean v0, v1, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel$WheelSavedState;->j:Z

    .line 481
    iget-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->f:Z

    iput-boolean v0, v1, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel$WheelSavedState;->k:Z

    .line 483
    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 7

    .prologue
    .line 139
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 141
    invoke-virtual {p0}, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->getPaddingBottom()I

    move-result v1

    invoke-virtual {p0}, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->getPaddingRight()I

    move-result v3

    iget-boolean v4, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->f:Z

    if-nez v4, :cond_0

    sub-int v4, p1, v2

    sub-int/2addr v4, v3

    sub-int v5, p2, v1

    sub-int/2addr v5, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget v5, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->a:I

    mul-int/lit8 v5, v5, 0x2

    iget v6, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->b:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    sub-int v5, p1, v2

    sub-int v3, v5, v3

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    sub-int v3, p2, v0

    sub-int v1, v3, v1

    sub-int/2addr v1, v4

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    new-instance v1, Landroid/graphics/RectF;

    iget v3, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->b:I

    add-int/2addr v3, v2

    int-to-float v3, v3

    iget v5, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->b:I

    add-int/2addr v5, v0

    int-to-float v5, v5

    add-int/2addr v2, v4

    iget v6, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->b:I

    sub-int/2addr v2, v6

    int-to-float v2, v2

    add-int/2addr v0, v4

    iget v4, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->b:I

    sub-int/2addr v0, v4

    int-to-float v0, v0

    invoke-direct {v1, v3, v5, v2, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->q:Landroid/graphics/RectF;

    .line 142
    :goto_0
    invoke-direct {p0}, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->a()V

    .line 143
    invoke-virtual {p0}, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->invalidate()V

    .line 144
    return-void

    .line 141
    :cond_0
    new-instance v4, Landroid/graphics/RectF;

    iget v5, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->b:I

    add-int/2addr v2, v5

    int-to-float v2, v2

    iget v5, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->b:I

    add-int/2addr v0, v5

    int-to-float v0, v0

    sub-int v3, p1, v3

    iget v5, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->b:I

    sub-int/2addr v3, v5

    int-to-float v3, v3

    sub-int v1, p2, v1

    iget v5, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->b:I

    sub-int/2addr v1, v5

    int-to-float v1, v1

    invoke-direct {v4, v2, v0, v3, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v4, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->q:Landroid/graphics/RectF;

    goto :goto_0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 2

    .prologue
    .line 291
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 293
    if-nez p2, :cond_0

    .line 294
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->s:J

    .line 296
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 4

    .prologue
    .line 355
    sget-object v1, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->z:Ljava/lang/Object;

    monitor-enter v1

    .line 356
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->y:Z

    .line 357
    const-wide v2, 0x407f400000000000L    # 500.0

    iput-wide v2, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->g:D

    .line 358
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->i:F

    .line 359
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->j:Z

    .line 360
    const-wide/16 v2, 0xd2

    iput-wide v2, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->k:J

    .line 361
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->s:J

    .line 362
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->u:F

    .line 363
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->v:F

    .line 364
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public resetCount()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 339
    iput v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->u:F

    .line 340
    iput v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->v:F

    .line 341
    invoke-virtual {p0}, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->invalidate()V

    .line 342
    return-void
.end method

.method public setBarColor(I)V
    .locals 1

    .prologue
    .line 586
    iput p1, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->m:I

    .line 587
    invoke-direct {p0}, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->a()V

    .line 588
    iget-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->w:Z

    if-nez v0, :cond_0

    .line 589
    invoke-virtual {p0}, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->invalidate()V

    .line 591
    :cond_0
    return-void
.end method

.method public setBarWidth(I)V
    .locals 1

    .prologue
    .line 567
    iput p1, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->b:I

    .line 568
    iget-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->w:Z

    if-nez v0, :cond_0

    .line 569
    invoke-virtual {p0}, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->invalidate()V

    .line 571
    :cond_0
    return-void
.end method

.method public setCallback(Lcom/alipay/android/app/flybird/ui/CustomProgressWheel$ProgressCallback;)V
    .locals 1

    .prologue
    .line 198
    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->x:Lcom/alipay/android/app/flybird/ui/CustomProgressWheel$ProgressCallback;

    .line 200
    iget-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->w:Z

    if-nez v0, :cond_0

    .line 201
    invoke-direct {p0}, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->b()V

    .line 203
    :cond_0
    return-void
.end method

.method public setCircleRadius(I)V
    .locals 1

    .prologue
    .line 548
    iput p1, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->a:I

    .line 549
    iget-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->w:Z

    if-nez v0, :cond_0

    .line 550
    invoke-virtual {p0}, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->invalidate()V

    .line 552
    :cond_0
    return-void
.end method

.method public setInstantProgress(F)V
    .locals 4

    .prologue
    const/high16 v3, 0x43b40000    # 360.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 442
    iget-boolean v1, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->w:Z

    if-eqz v1, :cond_0

    .line 443
    iput v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->u:F

    .line 444
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->w:Z

    .line 447
    :cond_0
    cmpl-float v1, p1, v2

    if-lez v1, :cond_2

    .line 448
    sub-float/2addr p1, v2

    .line 453
    :cond_1
    :goto_0
    iget v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->v:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_3

    .line 461
    :goto_1
    return-void

    .line 449
    :cond_2
    cmpg-float v1, p1, v0

    if-gez v1, :cond_1

    move p1, v0

    .line 450
    goto :goto_0

    .line 457
    :cond_3
    mul-float v0, p1, v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->v:F

    .line 458
    iget v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->v:F

    iput v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->u:F

    .line 459
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->s:J

    .line 460
    invoke-virtual {p0}, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->invalidate()V

    goto :goto_1
.end method

.method public setLinearProgress(Z)V
    .locals 1

    .prologue
    .line 529
    iput-boolean p1, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->t:Z

    .line 530
    iget-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->w:Z

    if-nez v0, :cond_0

    .line 531
    invoke-virtual {p0}, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->invalidate()V

    .line 533
    :cond_0
    return-void
.end method

.method public setProgress(F)V
    .locals 4

    .prologue
    const/high16 v3, 0x43b40000    # 360.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 406
    iget-boolean v1, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->w:Z

    if-eqz v1, :cond_0

    .line 407
    iput v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->u:F

    .line 408
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->w:Z

    .line 410
    invoke-direct {p0}, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->b()V

    .line 413
    :cond_0
    cmpl-float v1, p1, v2

    if-lez v1, :cond_2

    .line 414
    sub-float/2addr p1, v2

    .line 419
    :cond_1
    :goto_0
    iget v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->v:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_3

    .line 433
    :goto_1
    return-void

    .line 415
    :cond_2
    cmpg-float v1, p1, v0

    if-gez v1, :cond_1

    move p1, v0

    .line 416
    goto :goto_0

    .line 426
    :cond_3
    iget v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->u:F

    iget v1, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->v:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_4

    .line 427
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->s:J

    .line 430
    :cond_4
    mul-float v0, p1, v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->v:F

    .line 432
    invoke-virtual {p0}, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->invalidate()V

    goto :goto_1
.end method

.method public setRimColor(I)V
    .locals 1

    .prologue
    .line 606
    iput p1, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->n:I

    .line 607
    invoke-direct {p0}, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->a()V

    .line 608
    iget-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->w:Z

    if-nez v0, :cond_0

    .line 609
    invoke-virtual {p0}, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->invalidate()V

    .line 611
    :cond_0
    return-void
.end method

.method public setRimWidth(I)V
    .locals 1

    .prologue
    .line 646
    iput p1, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->c:I

    .line 647
    iget-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->w:Z

    if-nez v0, :cond_0

    .line 648
    invoke-virtual {p0}, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->invalidate()V

    .line 650
    :cond_0
    return-void
.end method

.method public setSpinSpeed(F)V
    .locals 1

    .prologue
    .line 630
    const/high16 v0, 0x43b40000    # 360.0f

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->r:F

    .line 631
    return-void
.end method

.method public spin()V
    .locals 2

    .prologue
    .line 381
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->s:J

    .line 382
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->w:Z

    .line 383
    invoke-virtual {p0}, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->invalidate()V

    .line 384
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 349
    sget-object v1, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->z:Ljava/lang/Object;

    monitor-enter v1

    .line 350
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->y:Z

    .line 351
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public stopSpinning()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 371
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->w:Z

    .line 372
    iput v1, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->u:F

    .line 373
    iput v1, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->v:F

    .line 374
    invoke-virtual {p0}, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->invalidate()V

    .line 375
    return-void
.end method
