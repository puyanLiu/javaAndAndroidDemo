.class Lcom/alipay/mobile/beehive/photo/view/PhotoView$TransRunnable;
.super Ljava/lang/Object;
.source "PhotoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TRANSLATE_DURATION:F = 150.0f


# instance fields
.field private interpolator:Lcom/alipay/mobile/beehive/photo/view/PhotoView$PhotoInter;

.field private lastInterpolate:F

.field private px:F

.field private py:F

.field final synthetic this$0:Lcom/alipay/mobile/beehive/photo/view/PhotoView;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/beehive/photo/view/PhotoView;FF)V
    .locals 4

    .prologue
    .line 951
    iput-object p1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$TransRunnable;->this$0:Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 952
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "PhotoView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "translate runnable px "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " py "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 953
    new-instance v0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$PhotoInter;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    const/high16 v2, 0x43160000    # 150.0f

    invoke-direct {v0, p1, v1, v2}, Lcom/alipay/mobile/beehive/photo/view/PhotoView$PhotoInter;-><init>(Lcom/alipay/mobile/beehive/photo/view/PhotoView;Landroid/view/animation/Interpolator;F)V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$TransRunnable;->interpolator:Lcom/alipay/mobile/beehive/photo/view/PhotoView$PhotoInter;

    .line 954
    iput p2, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$TransRunnable;->px:F

    .line 955
    iput p3, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$TransRunnable;->py:F

    .line 956
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$TransRunnable;->lastInterpolate:F

    .line 957
    sget-object v0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$State;->TRANSLATE:Lcom/alipay/mobile/beehive/photo/view/PhotoView$State;

    invoke-static {p1, v0}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->access$4(Lcom/alipay/mobile/beehive/photo/view/PhotoView;Lcom/alipay/mobile/beehive/photo/view/PhotoView$State;)V

    .line 958
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 962
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$TransRunnable;->this$0:Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->access$5(Lcom/alipay/mobile/beehive/photo/view/PhotoView;)Lcom/alipay/mobile/beehive/photo/view/PhotoView$State;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/beehive/photo/view/PhotoView$State;->NONE:Lcom/alipay/mobile/beehive/photo/view/PhotoView$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$TransRunnable;->this$0:Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->access$5(Lcom/alipay/mobile/beehive/photo/view/PhotoView;)Lcom/alipay/mobile/beehive/photo/view/PhotoView$State;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/beehive/photo/view/PhotoView$State;->TRANSLATE:Lcom/alipay/mobile/beehive/photo/view/PhotoView$State;

    if-eq v0, v1, :cond_0

    .line 963
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "PhotoView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "cancel translate for current state "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$TransRunnable;->this$0:Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    invoke-static {v3}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->access$5(Lcom/alipay/mobile/beehive/photo/view/PhotoView;)Lcom/alipay/mobile/beehive/photo/view/PhotoView$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 981
    :goto_0
    return-void

    .line 967
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$TransRunnable;->interpolator:Lcom/alipay/mobile/beehive/photo/view/PhotoView$PhotoInter;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/photo/view/PhotoView$PhotoInter;->calInterpolate()F

    move-result v0

    .line 968
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "PhotoView"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "interpolate "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 969
    iget v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$TransRunnable;->lastInterpolate:F

    sub-float v1, v0, v1

    .line 970
    iput v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$TransRunnable;->lastInterpolate:F

    .line 971
    iget v2, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$TransRunnable;->px:F

    mul-float/2addr v2, v1

    .line 972
    iget v3, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$TransRunnable;->py:F

    mul-float/2addr v1, v3

    .line 973
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v4, "PhotoView"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "deltaX "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " deltaY "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 974
    iget-object v3, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$TransRunnable;->this$0:Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    invoke-static {v3, v2, v1}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->access$7(Lcom/alipay/mobile/beehive/photo/view/PhotoView;FF)V

    .line 976
    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 977
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$TransRunnable;->this$0:Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    invoke-static {v0, p0}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->access$12(Lcom/alipay/mobile/beehive/photo/view/PhotoView;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 979
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$TransRunnable;->this$0:Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    sget-object v1, Lcom/alipay/mobile/beehive/photo/view/PhotoView$State;->NONE:Lcom/alipay/mobile/beehive/photo/view/PhotoView$State;

    invoke-static {v0, v1}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->access$4(Lcom/alipay/mobile/beehive/photo/view/PhotoView;Lcom/alipay/mobile/beehive/photo/view/PhotoView$State;)V

    goto :goto_0
.end method
