.class public Lcom/flybird/ProgressWheelHelper;
.super Ljava/lang/Object;
.source "ProgressWheelHelper.java"


# static fields
.field private static final A:Ljava/lang/Object;


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

.field private x:Lcom/flybird/ProgressWheelHelper$ProgressCallback;

.field private y:Landroid/view/View;

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 315
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/flybird/ProgressWheelHelper;->A:Ljava/lang/Object;

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;III)V
    .locals 4

    .prologue
    const/16 v1, 0xa

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/16 v0, 0x1c

    iput v0, p0, Lcom/flybird/ProgressWheelHelper;->a:I

    .line 19
    iput v1, p0, Lcom/flybird/ProgressWheelHelper;->b:I

    .line 20
    iput v1, p0, Lcom/flybird/ProgressWheelHelper;->c:I

    .line 22
    const/16 v0, 0x10

    iput v0, p0, Lcom/flybird/ProgressWheelHelper;->d:I

    .line 23
    const/16 v0, 0x10e

    iput v0, p0, Lcom/flybird/ProgressWheelHelper;->e:I

    .line 25
    iput-boolean v3, p0, Lcom/flybird/ProgressWheelHelper;->f:Z

    .line 27
    const-wide v0, 0x407f400000000000L    # 500.0

    iput-wide v0, p0, Lcom/flybird/ProgressWheelHelper;->g:D

    .line 28
    const-wide v0, 0x407cc00000000000L    # 460.0

    iput-wide v0, p0, Lcom/flybird/ProgressWheelHelper;->h:D

    .line 29
    iput v2, p0, Lcom/flybird/ProgressWheelHelper;->i:F

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flybird/ProgressWheelHelper;->j:Z

    .line 32
    const-wide/16 v0, 0xd2

    iput-wide v0, p0, Lcom/flybird/ProgressWheelHelper;->k:J

    .line 33
    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/flybird/ProgressWheelHelper;->l:J

    .line 36
    const/high16 v0, -0x55010000

    iput v0, p0, Lcom/flybird/ProgressWheelHelper;->m:I

    .line 37
    const v0, 0xffffff

    iput v0, p0, Lcom/flybird/ProgressWheelHelper;->n:I

    .line 40
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/flybird/ProgressWheelHelper;->o:Landroid/graphics/Paint;

    .line 41
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/flybird/ProgressWheelHelper;->p:Landroid/graphics/Paint;

    .line 44
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/flybird/ProgressWheelHelper;->q:Landroid/graphics/RectF;

    .line 48
    const/high16 v0, 0x43660000    # 230.0f

    iput v0, p0, Lcom/flybird/ProgressWheelHelper;->r:F

    .line 51
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/flybird/ProgressWheelHelper;->s:J

    .line 55
    iput v2, p0, Lcom/flybird/ProgressWheelHelper;->u:F

    .line 56
    iput v2, p0, Lcom/flybird/ProgressWheelHelper;->v:F

    .line 57
    iput-boolean v3, p0, Lcom/flybird/ProgressWheelHelper;->w:Z

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flybird/ProgressWheelHelper;->y:Landroid/view/View;

    .line 313
    iput-boolean v3, p0, Lcom/flybird/ProgressWheelHelper;->z:Z

    .line 70
    iput-object p2, p0, Lcom/flybird/ProgressWheelHelper;->y:Landroid/view/View;

    .line 71
    iput p5, p0, Lcom/flybird/ProgressWheelHelper;->m:I

    .line 72
    iput p3, p0, Lcom/flybird/ProgressWheelHelper;->b:I

    .line 73
    iput p4, p0, Lcom/flybird/ProgressWheelHelper;->c:I

    .line 74
    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    const/high16 v2, 0x42c80000    # 100.0f

    .line 366
    iget-object v0, p0, Lcom/flybird/ProgressWheelHelper;->x:Lcom/flybird/ProgressWheelHelper$ProgressCallback;

    if-eqz v0, :cond_0

    .line 367
    iget v0, p0, Lcom/flybird/ProgressWheelHelper;->u:F

    mul-float/2addr v0, v2

    const/high16 v1, 0x43b40000    # 360.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    .line 368
    iget-object v1, p0, Lcom/flybird/ProgressWheelHelper;->x:Lcom/flybird/ProgressWheelHelper$ProgressCallback;

    invoke-interface {v1, v0}, Lcom/flybird/ProgressWheelHelper$ProgressCallback;->onProgressUpdate(F)V

    .line 370
    :cond_0
    return-void
.end method


# virtual methods
.method protected final a(I)V
    .locals 2

    .prologue
    .line 262
    if-nez p1, :cond_0

    .line 263
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/flybird/ProgressWheelHelper;->s:J

    .line 265
    :cond_0
    return-void
.end method

.method protected final a(II)V
    .locals 1

    .prologue
    .line 123
    invoke-virtual {p0, p1, p2}, Lcom/flybird/ProgressWheelHelper;->b(II)V

    .line 124
    invoke-virtual {p0}, Lcom/flybird/ProgressWheelHelper;->setupPaints()V

    .line 125
    iget-object v0, p0, Lcom/flybird/ProgressWheelHelper;->y:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 126
    return-void
.end method

.method protected final a(Landroid/graphics/Canvas;)V
    .locals 14

    .prologue
    const/4 v6, 0x1

    const/high16 v13, 0x3f800000    # 1.0f

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    const/4 v4, 0x0

    const/high16 v2, 0x43b40000    # 360.0f

    .line 183
    sget-object v1, Lcom/flybird/ProgressWheelHelper;->A:Ljava/lang/Object;

    monitor-enter v1

    .line 184
    :try_start_0
    iget-boolean v0, p0, Lcom/flybird/ProgressWheelHelper;->z:Z

    if-nez v0, :cond_1

    .line 185
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    monitor-exit v1

    .line 189
    iget-object v1, p0, Lcom/flybird/ProgressWheelHelper;->q:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/flybird/ProgressWheelHelper;->p:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 193
    iget-boolean v0, p0, Lcom/flybird/ProgressWheelHelper;->w:Z

    if-eqz v0, :cond_8

    .line 197
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v7, p0, Lcom/flybird/ProgressWheelHelper;->s:J

    sub-long/2addr v0, v7

    .line 198
    long-to-float v3, v0

    iget v5, p0, Lcom/flybird/ProgressWheelHelper;->r:F

    mul-float/2addr v3, v5

    const/high16 v5, 0x447a0000    # 1000.0f

    div-float/2addr v3, v5

    .line 200
    iget-wide v7, p0, Lcom/flybird/ProgressWheelHelper;->k:J

    const-wide/16 v9, 0xc8

    cmp-long v5, v7, v9

    if-ltz v5, :cond_7

    iget-wide v7, p0, Lcom/flybird/ProgressWheelHelper;->g:D

    long-to-double v0, v0

    add-double/2addr v0, v7

    iput-wide v0, p0, Lcom/flybird/ProgressWheelHelper;->g:D

    iget-wide v0, p0, Lcom/flybird/ProgressWheelHelper;->g:D

    iget-wide v7, p0, Lcom/flybird/ProgressWheelHelper;->h:D

    cmpl-double v0, v0, v7

    if-lez v0, :cond_2

    iget-wide v0, p0, Lcom/flybird/ProgressWheelHelper;->g:D

    iget-wide v7, p0, Lcom/flybird/ProgressWheelHelper;->h:D

    sub-double/2addr v0, v7

    iput-wide v0, p0, Lcom/flybird/ProgressWheelHelper;->g:D

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/flybird/ProgressWheelHelper;->k:J

    iget-boolean v0, p0, Lcom/flybird/ProgressWheelHelper;->j:Z

    if-eqz v0, :cond_5

    move v0, v4

    :goto_1
    iput-boolean v0, p0, Lcom/flybird/ProgressWheelHelper;->j:Z

    :cond_2
    iget-wide v0, p0, Lcom/flybird/ProgressWheelHelper;->g:D

    iget-wide v7, p0, Lcom/flybird/ProgressWheelHelper;->h:D

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

    iget-boolean v1, p0, Lcom/flybird/ProgressWheelHelper;->j:Z

    if-eqz v1, :cond_6

    const/high16 v1, 0x437e0000    # 254.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/flybird/ProgressWheelHelper;->i:F

    .line 202
    :goto_2
    iget v0, p0, Lcom/flybird/ProgressWheelHelper;->u:F

    add-float/2addr v0, v3

    iput v0, p0, Lcom/flybird/ProgressWheelHelper;->u:F

    .line 203
    iget v0, p0, Lcom/flybird/ProgressWheelHelper;->u:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3

    .line 204
    iget v0, p0, Lcom/flybird/ProgressWheelHelper;->u:F

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/flybird/ProgressWheelHelper;->u:F

    .line 209
    iget-object v0, p0, Lcom/flybird/ProgressWheelHelper;->x:Lcom/flybird/ProgressWheelHelper$ProgressCallback;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/flybird/ProgressWheelHelper;->x:Lcom/flybird/ProgressWheelHelper$ProgressCallback;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-interface {v0, v1}, Lcom/flybird/ProgressWheelHelper$ProgressCallback;->onProgressUpdate(F)V

    .line 211
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/flybird/ProgressWheelHelper;->s:J

    .line 213
    iget v0, p0, Lcom/flybird/ProgressWheelHelper;->u:F

    const/high16 v1, 0x42b40000    # 90.0f

    sub-float v2, v0, v1

    .line 214
    const/high16 v0, 0x41800000    # 16.0f

    iget v1, p0, Lcom/flybird/ProgressWheelHelper;->i:F

    add-float v3, v0, v1

    .line 216
    iget-object v0, p0, Lcom/flybird/ProgressWheelHelper;->y:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 217
    const/4 v2, 0x0

    .line 218
    const/high16 v3, 0x43070000    # 135.0f

    .line 221
    :cond_4
    iget-object v1, p0, Lcom/flybird/ProgressWheelHelper;->q:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/flybird/ProgressWheelHelper;->o:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 255
    :goto_3
    if-eqz v6, :cond_0

    .line 256
    iget-object v0, p0, Lcom/flybird/ProgressWheelHelper;->y:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_0

    .line 183
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_5
    move v0, v6

    .line 200
    goto :goto_1

    :cond_6
    const/high16 v1, 0x437e0000    # 254.0f

    sub-float v0, v13, v0

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/flybird/ProgressWheelHelper;->u:F

    iget v5, p0, Lcom/flybird/ProgressWheelHelper;->i:F

    sub-float/2addr v5, v0

    add-float/2addr v1, v5

    iput v1, p0, Lcom/flybird/ProgressWheelHelper;->u:F

    iput v0, p0, Lcom/flybird/ProgressWheelHelper;->i:F

    goto :goto_2

    :cond_7
    iget-wide v7, p0, Lcom/flybird/ProgressWheelHelper;->k:J

    add-long/2addr v0, v7

    iput-wide v0, p0, Lcom/flybird/ProgressWheelHelper;->k:J

    goto :goto_2

    .line 223
    :cond_8
    iget v0, p0, Lcom/flybird/ProgressWheelHelper;->u:F

    .line 225
    iget v1, p0, Lcom/flybird/ProgressWheelHelper;->u:F

    iget v3, p0, Lcom/flybird/ProgressWheelHelper;->v:F

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_c

    .line 229
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iget-wide v9, p0, Lcom/flybird/ProgressWheelHelper;->s:J

    sub-long/2addr v7, v9

    long-to-float v1, v7

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v1, v3

    .line 230
    iget v3, p0, Lcom/flybird/ProgressWheelHelper;->r:F

    mul-float/2addr v1, v3

    .line 232
    iget v3, p0, Lcom/flybird/ProgressWheelHelper;->u:F

    add-float/2addr v1, v3

    iget v3, p0, Lcom/flybird/ProgressWheelHelper;->v:F

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, p0, Lcom/flybird/ProgressWheelHelper;->u:F

    .line 233
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/flybird/ProgressWheelHelper;->s:J

    .line 236
    :goto_4
    iget v1, p0, Lcom/flybird/ProgressWheelHelper;->u:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_9

    .line 237
    invoke-direct {p0}, Lcom/flybird/ProgressWheelHelper;->a()V

    .line 240
    :cond_9
    const/4 v1, 0x0

    .line 241
    iget v0, p0, Lcom/flybird/ProgressWheelHelper;->u:F

    .line 242
    iget-boolean v3, p0, Lcom/flybird/ProgressWheelHelper;->t:Z

    if-nez v3, :cond_b

    .line 243
    iget v0, p0, Lcom/flybird/ProgressWheelHelper;->u:F

    div-float/2addr v0, v2

    sub-float v0, v13, v0

    float-to-double v0, v0

    const-wide/high16 v7, 0x4010000000000000L    # 4.0

    invoke-static {v0, v1, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sub-double v0, v11, v0

    double-to-float v0, v0

    mul-float v1, v0, v2

    .line 245
    iget v0, p0, Lcom/flybird/ProgressWheelHelper;->u:F

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

    .line 248
    :goto_5
    iget-object v1, p0, Lcom/flybird/ProgressWheelHelper;->y:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_a

    move v3, v2

    .line 252
    :goto_6
    iget-object v1, p0, Lcom/flybird/ProgressWheelHelper;->q:Landroid/graphics/RectF;

    const/high16 v0, 0x42b40000    # 90.0f

    sub-float v2, v5, v0

    iget-object v5, p0, Lcom/flybird/ProgressWheelHelper;->o:Landroid/graphics/Paint;

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

.method protected final b(II)V
    .locals 7

    .prologue
    .line 147
    iget-object v0, p0, Lcom/flybird/ProgressWheelHelper;->y:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    .line 148
    iget-object v1, p0, Lcom/flybird/ProgressWheelHelper;->y:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    .line 149
    iget-object v2, p0, Lcom/flybird/ProgressWheelHelper;->y:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    .line 150
    iget-object v3, p0, Lcom/flybird/ProgressWheelHelper;->y:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    .line 152
    iget-boolean v4, p0, Lcom/flybird/ProgressWheelHelper;->f:Z

    if-nez v4, :cond_0

    .line 155
    sub-int v4, p1, v2

    sub-int/2addr v4, v3

    .line 156
    sub-int v5, p2, v1

    sub-int/2addr v5, v0

    .line 155
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 158
    iget v5, p0, Lcom/flybird/ProgressWheelHelper;->a:I

    mul-int/lit8 v5, v5, 0x2

    iget v6, p0, Lcom/flybird/ProgressWheelHelper;->b:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 162
    sub-int v5, p1, v2

    sub-int v3, v5, v3

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    .line 163
    sub-int v3, p2, v0

    sub-int v1, v3, v1

    sub-int/2addr v1, v4

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 165
    new-instance v1, Landroid/graphics/RectF;

    iget v3, p0, Lcom/flybird/ProgressWheelHelper;->b:I

    add-int/2addr v3, v2

    int-to-float v3, v3

    iget v5, p0, Lcom/flybird/ProgressWheelHelper;->b:I

    add-int/2addr v5, v0

    int-to-float v5, v5

    add-int/2addr v2, v4

    iget v6, p0, Lcom/flybird/ProgressWheelHelper;->b:I

    sub-int/2addr v2, v6

    int-to-float v2, v2

    .line 166
    add-int/2addr v0, v4

    iget v4, p0, Lcom/flybird/ProgressWheelHelper;->b:I

    sub-int/2addr v0, v4

    int-to-float v0, v0

    invoke-direct {v1, v3, v5, v2, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 165
    iput-object v1, p0, Lcom/flybird/ProgressWheelHelper;->q:Landroid/graphics/RectF;

    .line 171
    :goto_0
    return-void

    .line 168
    :cond_0
    new-instance v4, Landroid/graphics/RectF;

    iget v5, p0, Lcom/flybird/ProgressWheelHelper;->b:I

    add-int/2addr v2, v5

    int-to-float v2, v2

    iget v5, p0, Lcom/flybird/ProgressWheelHelper;->b:I

    add-int/2addr v0, v5

    int-to-float v0, v0

    .line 169
    sub-int v3, p1, v3

    iget v5, p0, Lcom/flybird/ProgressWheelHelper;->b:I

    sub-int/2addr v3, v5

    int-to-float v3, v3

    sub-int v1, p2, v1

    iget v5, p0, Lcom/flybird/ProgressWheelHelper;->b:I

    sub-int/2addr v1, v5

    int-to-float v1, v1

    invoke-direct {v4, v2, v0, v3, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 168
    iput-object v4, p0, Lcom/flybird/ProgressWheelHelper;->q:Landroid/graphics/RectF;

    goto :goto_0
.end method

.method public getBarColor()I
    .locals 1

    .prologue
    .line 548
    iget v0, p0, Lcom/flybird/ProgressWheelHelper;->m:I

    return v0
.end method

.method public getBarWidth()I
    .locals 1

    .prologue
    .line 528
    iget v0, p0, Lcom/flybird/ProgressWheelHelper;->b:I

    return v0
.end method

.method public getCircleRadius()I
    .locals 1

    .prologue
    .line 508
    iget v0, p0, Lcom/flybird/ProgressWheelHelper;->a:I

    return v0
.end method

.method public getProgress()F
    .locals 2

    .prologue
    .line 488
    iget-boolean v0, p0, Lcom/flybird/ProgressWheelHelper;->w:Z

    if-eqz v0, :cond_0

    const/high16 v0, -0x40800000    # -1.0f

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/flybird/ProgressWheelHelper;->u:F

    const/high16 v1, 0x43b40000    # 360.0f

    div-float/2addr v0, v1

    goto :goto_0
.end method

.method public getRimColor()I
    .locals 1

    .prologue
    .line 569
    iget v0, p0, Lcom/flybird/ProgressWheelHelper;->n:I

    return v0
.end method

.method public getRimWidth()I
    .locals 1

    .prologue
    .line 611
    iget v0, p0, Lcom/flybird/ProgressWheelHelper;->c:I

    return v0
.end method

.method public getSpinSpeed()F
    .locals 2

    .prologue
    .line 592
    iget v0, p0, Lcom/flybird/ProgressWheelHelper;->r:F

    const/high16 v1, 0x43b40000    # 360.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 324
    iget-boolean v0, p0, Lcom/flybird/ProgressWheelHelper;->z:Z

    return v0
.end method

.method public isSpinning()Z
    .locals 1

    .prologue
    .line 301
    iget-boolean v0, p0, Lcom/flybird/ProgressWheelHelper;->w:Z

    return v0
.end method

.method public measure(II)[I
    .locals 8

    .prologue
    const/high16 v7, -0x80000000

    const/high16 v6, 0x40000000    # 2.0f

    .line 78
    iget v0, p0, Lcom/flybird/ProgressWheelHelper;->a:I

    mul-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/flybird/ProgressWheelHelper;->y:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/flybird/ProgressWheelHelper;->y:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    add-int v2, v0, v1

    .line 79
    iget v0, p0, Lcom/flybird/ProgressWheelHelper;->a:I

    mul-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/flybird/ProgressWheelHelper;->y:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/flybird/ProgressWheelHelper;->y:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    .line 81
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 82
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 83
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 84
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 90
    if-eq v4, v6, :cond_4

    .line 92
    if-ne v4, v7, :cond_0

    .line 95
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 102
    :cond_0
    :goto_0
    if-eq v5, v6, :cond_1

    if-ne v4, v6, :cond_3

    :cond_1
    move v0, v1

    .line 113
    :cond_2
    :goto_1
    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    aput v0, v1, v2

    return-object v1

    .line 105
    :cond_3
    if-ne v5, v7, :cond_2

    .line 107
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
    .line 462
    check-cast p1, Lcom/flybird/ProgressWheelHelper$WheelSavedState;

    .line 464
    iget v0, p1, Lcom/flybird/ProgressWheelHelper$WheelSavedState;->a:F

    iput v0, p0, Lcom/flybird/ProgressWheelHelper;->u:F

    .line 465
    iget v0, p1, Lcom/flybird/ProgressWheelHelper$WheelSavedState;->b:F

    iput v0, p0, Lcom/flybird/ProgressWheelHelper;->v:F

    .line 466
    iget-boolean v0, p1, Lcom/flybird/ProgressWheelHelper$WheelSavedState;->c:Z

    iput-boolean v0, p0, Lcom/flybird/ProgressWheelHelper;->w:Z

    .line 467
    iget v0, p1, Lcom/flybird/ProgressWheelHelper$WheelSavedState;->d:F

    iput v0, p0, Lcom/flybird/ProgressWheelHelper;->r:F

    .line 468
    iget v0, p1, Lcom/flybird/ProgressWheelHelper$WheelSavedState;->e:I

    iput v0, p0, Lcom/flybird/ProgressWheelHelper;->b:I

    .line 469
    iget v0, p1, Lcom/flybird/ProgressWheelHelper$WheelSavedState;->f:I

    iput v0, p0, Lcom/flybird/ProgressWheelHelper;->m:I

    .line 470
    iget v0, p1, Lcom/flybird/ProgressWheelHelper$WheelSavedState;->g:I

    iput v0, p0, Lcom/flybird/ProgressWheelHelper;->c:I

    .line 471
    iget v0, p1, Lcom/flybird/ProgressWheelHelper$WheelSavedState;->h:I

    iput v0, p0, Lcom/flybird/ProgressWheelHelper;->n:I

    .line 472
    iget v0, p1, Lcom/flybird/ProgressWheelHelper$WheelSavedState;->i:I

    iput v0, p0, Lcom/flybird/ProgressWheelHelper;->a:I

    .line 473
    iget-boolean v0, p1, Lcom/flybird/ProgressWheelHelper$WheelSavedState;->j:Z

    iput-boolean v0, p0, Lcom/flybird/ProgressWheelHelper;->t:Z

    .line 474
    iget-boolean v0, p1, Lcom/flybird/ProgressWheelHelper$WheelSavedState;->k:Z

    iput-boolean v0, p0, Lcom/flybird/ProgressWheelHelper;->f:Z

    .line 476
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/flybird/ProgressWheelHelper;->s:J

    .line 477
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Parcelable;)Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 442
    new-instance v0, Lcom/flybird/ProgressWheelHelper$WheelSavedState;

    invoke-direct {v0, p1}, Lcom/flybird/ProgressWheelHelper$WheelSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 445
    iget v1, p0, Lcom/flybird/ProgressWheelHelper;->u:F

    iput v1, v0, Lcom/flybird/ProgressWheelHelper$WheelSavedState;->a:F

    .line 446
    iget v1, p0, Lcom/flybird/ProgressWheelHelper;->v:F

    iput v1, v0, Lcom/flybird/ProgressWheelHelper$WheelSavedState;->b:F

    .line 447
    iget-boolean v1, p0, Lcom/flybird/ProgressWheelHelper;->w:Z

    iput-boolean v1, v0, Lcom/flybird/ProgressWheelHelper$WheelSavedState;->c:Z

    .line 448
    iget v1, p0, Lcom/flybird/ProgressWheelHelper;->r:F

    iput v1, v0, Lcom/flybird/ProgressWheelHelper$WheelSavedState;->d:F

    .line 449
    iget v1, p0, Lcom/flybird/ProgressWheelHelper;->b:I

    iput v1, v0, Lcom/flybird/ProgressWheelHelper$WheelSavedState;->e:I

    .line 450
    iget v1, p0, Lcom/flybird/ProgressWheelHelper;->m:I

    iput v1, v0, Lcom/flybird/ProgressWheelHelper$WheelSavedState;->f:I

    .line 451
    iget v1, p0, Lcom/flybird/ProgressWheelHelper;->c:I

    iput v1, v0, Lcom/flybird/ProgressWheelHelper$WheelSavedState;->g:I

    .line 452
    iget v1, p0, Lcom/flybird/ProgressWheelHelper;->n:I

    iput v1, v0, Lcom/flybird/ProgressWheelHelper$WheelSavedState;->h:I

    .line 453
    iget v1, p0, Lcom/flybird/ProgressWheelHelper;->a:I

    iput v1, v0, Lcom/flybird/ProgressWheelHelper$WheelSavedState;->i:I

    .line 454
    iget-boolean v1, p0, Lcom/flybird/ProgressWheelHelper;->t:Z

    iput-boolean v1, v0, Lcom/flybird/ProgressWheelHelper$WheelSavedState;->j:Z

    .line 455
    iget-boolean v1, p0, Lcom/flybird/ProgressWheelHelper;->f:Z

    iput-boolean v1, v0, Lcom/flybird/ProgressWheelHelper$WheelSavedState;->k:Z

    .line 457
    return-object v0
.end method

.method public pause()V
    .locals 4

    .prologue
    .line 328
    sget-object v1, Lcom/flybird/ProgressWheelHelper;->A:Ljava/lang/Object;

    monitor-enter v1

    .line 329
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/flybird/ProgressWheelHelper;->z:Z

    .line 330
    const-wide v2, 0x407f400000000000L    # 500.0

    iput-wide v2, p0, Lcom/flybird/ProgressWheelHelper;->g:D

    .line 331
    const/4 v0, 0x0

    iput v0, p0, Lcom/flybird/ProgressWheelHelper;->i:F

    .line 332
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flybird/ProgressWheelHelper;->j:Z

    .line 333
    const-wide/16 v2, 0xd2

    iput-wide v2, p0, Lcom/flybird/ProgressWheelHelper;->k:J

    .line 334
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/flybird/ProgressWheelHelper;->s:J

    .line 335
    const/4 v0, 0x0

    iput v0, p0, Lcom/flybird/ProgressWheelHelper;->u:F

    .line 336
    const/4 v0, 0x0

    iput v0, p0, Lcom/flybird/ProgressWheelHelper;->v:F

    .line 328
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

    .line 308
    iput v0, p0, Lcom/flybird/ProgressWheelHelper;->u:F

    .line 309
    iput v0, p0, Lcom/flybird/ProgressWheelHelper;->v:F

    .line 310
    iget-object v0, p0, Lcom/flybird/ProgressWheelHelper;->y:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 311
    return-void
.end method

.method public setBarColor(I)V
    .locals 1

    .prologue
    .line 558
    iput p1, p0, Lcom/flybird/ProgressWheelHelper;->m:I

    .line 559
    invoke-virtual {p0}, Lcom/flybird/ProgressWheelHelper;->setupPaints()V

    .line 560
    iget-boolean v0, p0, Lcom/flybird/ProgressWheelHelper;->w:Z

    if-nez v0, :cond_0

    .line 561
    iget-object v0, p0, Lcom/flybird/ProgressWheelHelper;->y:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 563
    :cond_0
    return-void
.end method

.method public setBarWidth(I)V
    .locals 1

    .prologue
    .line 538
    iput p1, p0, Lcom/flybird/ProgressWheelHelper;->b:I

    .line 539
    iget-boolean v0, p0, Lcom/flybird/ProgressWheelHelper;->w:Z

    if-nez v0, :cond_0

    .line 540
    iget-object v0, p0, Lcom/flybird/ProgressWheelHelper;->y:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 542
    :cond_0
    return-void
.end method

.method public setCallback(Lcom/flybird/ProgressWheelHelper$ProgressCallback;)V
    .locals 1

    .prologue
    .line 174
    iput-object p1, p0, Lcom/flybird/ProgressWheelHelper;->x:Lcom/flybird/ProgressWheelHelper$ProgressCallback;

    .line 176
    iget-boolean v0, p0, Lcom/flybird/ProgressWheelHelper;->w:Z

    if-nez v0, :cond_0

    .line 177
    invoke-direct {p0}, Lcom/flybird/ProgressWheelHelper;->a()V

    .line 179
    :cond_0
    return-void
.end method

.method public setCircleRadius(I)V
    .locals 1

    .prologue
    .line 518
    iput p1, p0, Lcom/flybird/ProgressWheelHelper;->a:I

    .line 519
    iget-boolean v0, p0, Lcom/flybird/ProgressWheelHelper;->w:Z

    if-nez v0, :cond_0

    .line 520
    iget-object v0, p0, Lcom/flybird/ProgressWheelHelper;->y:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 522
    :cond_0
    return-void
.end method

.method public setInstantProgress(F)V
    .locals 4

    .prologue
    const/high16 v3, 0x43b40000    # 360.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 417
    iget-boolean v1, p0, Lcom/flybird/ProgressWheelHelper;->w:Z

    if-eqz v1, :cond_0

    .line 418
    iput v0, p0, Lcom/flybird/ProgressWheelHelper;->u:F

    .line 419
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/flybird/ProgressWheelHelper;->w:Z

    .line 422
    :cond_0
    cmpl-float v1, p1, v2

    if-lez v1, :cond_2

    .line 423
    sub-float/2addr p1, v2

    .line 428
    :cond_1
    :goto_0
    iget v0, p0, Lcom/flybird/ProgressWheelHelper;->v:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_3

    .line 436
    :goto_1
    return-void

    .line 424
    :cond_2
    cmpg-float v1, p1, v0

    if-gez v1, :cond_1

    move p1, v0

    .line 425
    goto :goto_0

    .line 432
    :cond_3
    mul-float v0, p1, v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/flybird/ProgressWheelHelper;->v:F

    .line 433
    iget v0, p0, Lcom/flybird/ProgressWheelHelper;->v:F

    iput v0, p0, Lcom/flybird/ProgressWheelHelper;->u:F

    .line 434
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/flybird/ProgressWheelHelper;->s:J

    .line 435
    iget-object v0, p0, Lcom/flybird/ProgressWheelHelper;->y:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto :goto_1
.end method

.method public setLinearProgress(Z)V
    .locals 1

    .prologue
    .line 498
    iput-boolean p1, p0, Lcom/flybird/ProgressWheelHelper;->t:Z

    .line 499
    iget-boolean v0, p0, Lcom/flybird/ProgressWheelHelper;->w:Z

    if-nez v0, :cond_0

    .line 500
    iget-object v0, p0, Lcom/flybird/ProgressWheelHelper;->y:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 502
    :cond_0
    return-void
.end method

.method public setProgress(F)V
    .locals 4

    .prologue
    const/high16 v3, 0x43b40000    # 360.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 380
    iget-boolean v1, p0, Lcom/flybird/ProgressWheelHelper;->w:Z

    if-eqz v1, :cond_0

    .line 381
    iput v0, p0, Lcom/flybird/ProgressWheelHelper;->u:F

    .line 382
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/flybird/ProgressWheelHelper;->w:Z

    .line 384
    invoke-direct {p0}, Lcom/flybird/ProgressWheelHelper;->a()V

    .line 387
    :cond_0
    cmpl-float v1, p1, v2

    if-lez v1, :cond_2

    .line 388
    sub-float/2addr p1, v2

    .line 393
    :cond_1
    :goto_0
    iget v0, p0, Lcom/flybird/ProgressWheelHelper;->v:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_3

    .line 407
    :goto_1
    return-void

    .line 389
    :cond_2
    cmpg-float v1, p1, v0

    if-gez v1, :cond_1

    move p1, v0

    .line 390
    goto :goto_0

    .line 400
    :cond_3
    iget v0, p0, Lcom/flybird/ProgressWheelHelper;->u:F

    iget v1, p0, Lcom/flybird/ProgressWheelHelper;->v:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_4

    .line 401
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/flybird/ProgressWheelHelper;->s:J

    .line 404
    :cond_4
    mul-float v0, p1, v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/flybird/ProgressWheelHelper;->v:F

    .line 406
    iget-object v0, p0, Lcom/flybird/ProgressWheelHelper;->y:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto :goto_1
.end method

.method public setRimColor(I)V
    .locals 1

    .prologue
    .line 579
    iput p1, p0, Lcom/flybird/ProgressWheelHelper;->n:I

    .line 580
    invoke-virtual {p0}, Lcom/flybird/ProgressWheelHelper;->setupPaints()V

    .line 581
    iget-boolean v0, p0, Lcom/flybird/ProgressWheelHelper;->w:Z

    if-nez v0, :cond_0

    .line 582
    iget-object v0, p0, Lcom/flybird/ProgressWheelHelper;->y:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 584
    :cond_0
    return-void
.end method

.method public setRimWidth(I)V
    .locals 1

    .prologue
    .line 621
    iput p1, p0, Lcom/flybird/ProgressWheelHelper;->c:I

    .line 622
    iget-boolean v0, p0, Lcom/flybird/ProgressWheelHelper;->w:Z

    if-nez v0, :cond_0

    .line 623
    iget-object v0, p0, Lcom/flybird/ProgressWheelHelper;->y:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 625
    :cond_0
    return-void
.end method

.method public setSpinSpeed(F)V
    .locals 1

    .prologue
    .line 604
    const/high16 v0, 0x43b40000    # 360.0f

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/flybird/ProgressWheelHelper;->r:F

    .line 605
    return-void
.end method

.method public setupPaints()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 132
    iget-object v0, p0, Lcom/flybird/ProgressWheelHelper;->o:Landroid/graphics/Paint;

    iget v1, p0, Lcom/flybird/ProgressWheelHelper;->m:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 133
    iget-object v0, p0, Lcom/flybird/ProgressWheelHelper;->o:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 134
    iget-object v0, p0, Lcom/flybird/ProgressWheelHelper;->o:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 135
    iget-object v0, p0, Lcom/flybird/ProgressWheelHelper;->o:Landroid/graphics/Paint;

    iget v1, p0, Lcom/flybird/ProgressWheelHelper;->b:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 137
    iget-object v0, p0, Lcom/flybird/ProgressWheelHelper;->p:Landroid/graphics/Paint;

    iget v1, p0, Lcom/flybird/ProgressWheelHelper;->n:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 138
    iget-object v0, p0, Lcom/flybird/ProgressWheelHelper;->p:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 139
    iget-object v0, p0, Lcom/flybird/ProgressWheelHelper;->p:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 140
    iget-object v0, p0, Lcom/flybird/ProgressWheelHelper;->p:Landroid/graphics/Paint;

    iget v1, p0, Lcom/flybird/ProgressWheelHelper;->c:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 141
    return-void
.end method

.method public spin()V
    .locals 2

    .prologue
    .line 354
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/flybird/ProgressWheelHelper;->s:J

    .line 355
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flybird/ProgressWheelHelper;->w:Z

    .line 356
    iget-object v0, p0, Lcom/flybird/ProgressWheelHelper;->y:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 357
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 318
    sget-object v1, Lcom/flybird/ProgressWheelHelper;->A:Ljava/lang/Object;

    monitor-enter v1

    .line 319
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/flybird/ProgressWheelHelper;->z:Z

    .line 318
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

    .line 344
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flybird/ProgressWheelHelper;->w:Z

    .line 345
    iput v1, p0, Lcom/flybird/ProgressWheelHelper;->u:F

    .line 346
    iput v1, p0, Lcom/flybird/ProgressWheelHelper;->v:F

    .line 347
    iget-object v0, p0, Lcom/flybird/ProgressWheelHelper;->y:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 348
    return-void
.end method
