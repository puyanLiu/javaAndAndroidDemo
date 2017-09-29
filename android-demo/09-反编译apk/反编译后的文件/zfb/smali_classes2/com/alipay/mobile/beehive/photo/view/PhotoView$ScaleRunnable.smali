.class Lcom/alipay/mobile/beehive/photo/view/PhotoView$ScaleRunnable;
.super Ljava/lang/Object;
.source "PhotoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final SCALE_DURATION:F = 200.0f


# instance fields
.field private foucsPoint:Landroid/graphics/PointF;

.field private interpolator:Lcom/alipay/mobile/beehive/photo/view/PhotoView$PhotoInter;

.field private startScale:F

.field private targetScale:F

.field final synthetic this$0:Lcom/alipay/mobile/beehive/photo/view/PhotoView;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/beehive/photo/view/PhotoView;FLandroid/graphics/PointF;)V
    .locals 3

    .prologue
    .line 1018
    iput-object p1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$ScaleRunnable;->this$0:Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1019
    sget-object v0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$State;->SCALE:Lcom/alipay/mobile/beehive/photo/view/PhotoView$State;

    invoke-static {p1, v0}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->access$4(Lcom/alipay/mobile/beehive/photo/view/PhotoView;Lcom/alipay/mobile/beehive/photo/view/PhotoView$State;)V

    .line 1020
    new-instance v0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$PhotoInter;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    const/high16 v2, 0x43480000    # 200.0f

    invoke-direct {v0, p1, v1, v2}, Lcom/alipay/mobile/beehive/photo/view/PhotoView$PhotoInter;-><init>(Lcom/alipay/mobile/beehive/photo/view/PhotoView;Landroid/view/animation/Interpolator;F)V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$ScaleRunnable;->interpolator:Lcom/alipay/mobile/beehive/photo/view/PhotoView$PhotoInter;

    .line 1021
    invoke-static {p1}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->access$13(Lcom/alipay/mobile/beehive/photo/view/PhotoView;)F

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$ScaleRunnable;->startScale:F

    .line 1022
    iput p2, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$ScaleRunnable;->targetScale:F

    .line 1023
    iput-object p3, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$ScaleRunnable;->foucsPoint:Landroid/graphics/PointF;

    .line 1024
    return-void
.end method

.method private calculateDeltaScale(F)F
    .locals 2

    .prologue
    .line 1041
    iget v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$ScaleRunnable;->targetScale:F

    iget v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$ScaleRunnable;->startScale:F

    sub-float/2addr v0, v1

    .line 1042
    iget v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$ScaleRunnable;->startScale:F

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    .line 1043
    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$ScaleRunnable;->this$0:Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    invoke-static {v1}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->access$13(Lcom/alipay/mobile/beehive/photo/view/PhotoView;)F

    move-result v1

    div-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1028
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$ScaleRunnable;->interpolator:Lcom/alipay/mobile/beehive/photo/view/PhotoView$PhotoInter;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/photo/view/PhotoView$PhotoInter;->calInterpolate()F

    move-result v0

    .line 1029
    invoke-direct {p0, v0}, Lcom/alipay/mobile/beehive/photo/view/PhotoView$ScaleRunnable;->calculateDeltaScale(F)F

    move-result v1

    .line 1030
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "PhotoView"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "deltaScale "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " interpolate "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1031
    iget-object v2, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$ScaleRunnable;->this$0:Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    iget-object v3, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$ScaleRunnable;->foucsPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$ScaleRunnable;->foucsPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-static {v2, v1, v3, v4}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->access$19(Lcom/alipay/mobile/beehive/photo/view/PhotoView;FFF)V

    .line 1033
    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 1034
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$ScaleRunnable;->this$0:Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    invoke-static {v0, p0}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->access$12(Lcom/alipay/mobile/beehive/photo/view/PhotoView;Ljava/lang/Runnable;)V

    .line 1038
    :goto_0
    return-void

    .line 1036
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$ScaleRunnable;->this$0:Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    sget-object v1, Lcom/alipay/mobile/beehive/photo/view/PhotoView$State;->NONE:Lcom/alipay/mobile/beehive/photo/view/PhotoView$State;

    invoke-static {v0, v1}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->access$4(Lcom/alipay/mobile/beehive/photo/view/PhotoView;Lcom/alipay/mobile/beehive/photo/view/PhotoView$State;)V

    goto :goto_0
.end method
