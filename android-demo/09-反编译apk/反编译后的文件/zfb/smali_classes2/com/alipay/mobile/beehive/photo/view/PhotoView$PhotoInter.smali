.class Lcom/alipay/mobile/beehive/photo/view/PhotoView$PhotoInter;
.super Ljava/lang/Object;
.source "PhotoView.java"


# instance fields
.field private duration:F

.field private inter:Landroid/view/animation/Interpolator;

.field final synthetic this$0:Lcom/alipay/mobile/beehive/photo/view/PhotoView;

.field private time:J


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/beehive/photo/view/PhotoView;Landroid/view/animation/Interpolator;F)V
    .locals 2

    .prologue
    .line 993
    iput-object p1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$PhotoInter;->this$0:Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 994
    iput-object p2, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$PhotoInter;->inter:Landroid/view/animation/Interpolator;

    .line 995
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$PhotoInter;->time:J

    .line 996
    iput p3, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$PhotoInter;->duration:F

    .line 997
    return-void
.end method


# virtual methods
.method public calInterpolate()F
    .locals 4

    .prologue
    .line 1000
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1001
    iget-wide v2, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$PhotoInter;->time:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    iget v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$PhotoInter;->duration:F

    div-float/2addr v0, v1

    .line 1002
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 1003
    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$PhotoInter;->inter:Landroid/view/animation/Interpolator;

    invoke-interface {v1, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    return v0
.end method
