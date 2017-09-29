.class public Lcom/alipay/android/widgets/asset/piechart/PieChart;
.super Landroid/view/View;
.source "PieChart.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# static fields
.field public static final PROCESS_STATUS_DEFAULT:I = 0x1

.field public static final PROCESS_STATUS_DEFAULT_NO_PROTRUSION:I = 0x0

.field public static final PROCESS_STATUS_INITRENDER:I = 0x2

.field public static final PROCESS_STATUS_MOVING:I = 0x4

.field public static final PROCESS_STATUS_PROTRUSIONING:I = 0x5

.field public static final PROCESS_STATUS_ROTEING:I = 0x3


# instance fields
.field private A:F

.field private B:F

.field private C:I

.field private D:I

.field private E:I

.field private F:I

.field private G:F

.field private H:F

.field private I:Z

.field private a:I

.field accumulateDegrees:[F

.field private b:Landroid/graphics/Paint;

.field private c:Lcom/alipay/android/widgets/asset/piechart/PieChartAdapter;

.field private d:Landroid/graphics/RectF;

.field private e:Landroid/graphics/RectF;

.field private f:Landroid/graphics/RectF;

.field private g:Lcom/alipay/android/widgets/asset/piechart/Point;

.field private h:Ljava/lang/Float;

.field historyManager:Lcom/alipay/android/widgets/asset/piechart/HistoryManager;

.field private i:F

.field private j:F

.field private k:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private l:F

.field lastDrawWidth:I

.field private m:Lcom/alipay/android/widgets/asset/piechart/PieChart$InitRenderModel;

.field public measureCallback:Lcom/alipay/android/widgets/asset/piechart/PieChart$MeasuareCallback;

.field private n:Lcom/alipay/android/widgets/asset/piechart/PieChart$RotateModel;

.field private o:Lcom/alipay/android/widgets/asset/piechart/PieChart$ProtrusionModel;

.field private p:Lcom/alipay/android/widgets/asset/piechart/listener/OnRenderFinishListener;

.field private q:Lcom/alipay/android/widgets/asset/piechart/listener/OnSectorClickListener;

.field private r:Lcom/alipay/android/widgets/asset/piechart/listener/OnSectorSelectedListener;

.field private s:Lcom/alipay/android/widgets/asset/piechart/listener/OnCenterButtonClickListener;

.field private t:Lcom/alipay/android/widgets/asset/piechart/listener/OnSectorChangeListener;

.field private u:Lcom/alipay/android/widgets/asset/piechart/listener/OnCenterButtonLongClickListener;

.field private v:Lcom/alipay/android/widgets/asset/piechart/listener/OnSectorLongClickListener;

.field private w:Lcom/alipay/android/widgets/asset/piechart/listener/OnRotateFinishListener;

.field private x:I

.field private y:F

.field private z:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .prologue
    const/high16 v5, 0x33000000

    const/4 v4, 0x0

    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 112
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 34
    const/4 v0, 0x1

    iput v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->a:I

    .line 36
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->b:Landroid/graphics/Paint;

    .line 48
    const/16 v0, 0x14

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->accumulateDegrees:[F

    .line 52
    new-instance v0, Lcom/alipay/android/widgets/asset/piechart/HistoryManager;

    .line 53
    invoke-direct {v0}, Lcom/alipay/android/widgets/asset/piechart/HistoryManager;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->historyManager:Lcom/alipay/android/widgets/asset/piechart/HistoryManager;

    .line 55
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->h:Ljava/lang/Float;

    .line 57
    iput v2, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->i:F

    .line 59
    const/high16 v0, 0x42b40000    # 90.0f

    iput v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->j:F

    .line 61
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->k:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 63
    iput v2, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->l:F

    .line 65
    new-instance v0, Lcom/alipay/android/widgets/asset/piechart/PieChart$InitRenderModel;

    invoke-direct {v0, p0}, Lcom/alipay/android/widgets/asset/piechart/PieChart$InitRenderModel;-><init>(Lcom/alipay/android/widgets/asset/piechart/PieChart;)V

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->m:Lcom/alipay/android/widgets/asset/piechart/PieChart$InitRenderModel;

    .line 67
    new-instance v0, Lcom/alipay/android/widgets/asset/piechart/PieChart$RotateModel;

    invoke-direct {v0, p0}, Lcom/alipay/android/widgets/asset/piechart/PieChart$RotateModel;-><init>(Lcom/alipay/android/widgets/asset/piechart/PieChart;)V

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->n:Lcom/alipay/android/widgets/asset/piechart/PieChart$RotateModel;

    .line 69
    new-instance v0, Lcom/alipay/android/widgets/asset/piechart/PieChart$ProtrusionModel;

    invoke-direct {v0, p0}, Lcom/alipay/android/widgets/asset/piechart/PieChart$ProtrusionModel;-><init>(Lcom/alipay/android/widgets/asset/piechart/PieChart;)V

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->o:Lcom/alipay/android/widgets/asset/piechart/PieChart$ProtrusionModel;

    .line 71
    iput-object v1, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->p:Lcom/alipay/android/widgets/asset/piechart/listener/OnRenderFinishListener;

    .line 73
    iput-object v1, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->q:Lcom/alipay/android/widgets/asset/piechart/listener/OnSectorClickListener;

    .line 75
    iput-object v1, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->r:Lcom/alipay/android/widgets/asset/piechart/listener/OnSectorSelectedListener;

    .line 77
    iput-object v1, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->s:Lcom/alipay/android/widgets/asset/piechart/listener/OnCenterButtonClickListener;

    .line 79
    iput-object v1, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->t:Lcom/alipay/android/widgets/asset/piechart/listener/OnSectorChangeListener;

    .line 81
    iput-object v1, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->u:Lcom/alipay/android/widgets/asset/piechart/listener/OnCenterButtonLongClickListener;

    .line 83
    iput-object v1, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->v:Lcom/alipay/android/widgets/asset/piechart/listener/OnSectorLongClickListener;

    .line 85
    iput-object v1, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->w:Lcom/alipay/android/widgets/asset/piechart/listener/OnRotateFinishListener;

    .line 89
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->x:I

    .line 117
    const v0, 0x3f75c28f    # 0.96f

    iput v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->z:F

    .line 118
    const v0, 0x3f07ae14    # 0.53f

    iput v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->A:F

    .line 119
    iput v3, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->B:F

    .line 120
    iput v5, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->C:I

    .line 121
    const v0, 0xffffff

    iput v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->D:I

    .line 122
    iput v5, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->E:I

    .line 123
    const v0, 0x767676

    iput v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->F:I

    .line 124
    const v0, 0x3a83126f    # 0.001f

    iput v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->G:F

    .line 125
    iput v3, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->H:F

    .line 627
    iput v4, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->lastDrawWidth:I

    .line 1034
    iput-boolean v4, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->I:Z

    .line 113
    invoke-direct {p0, v1}, Lcom/alipay/android/widgets/asset/piechart/PieChart;->a(Landroid/content/res/TypedArray;)V

    .line 114
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .prologue
    const/high16 v5, 0x33000000

    const/4 v4, 0x0

    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 105
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    const/4 v0, 0x1

    iput v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->a:I

    .line 36
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->b:Landroid/graphics/Paint;

    .line 48
    const/16 v0, 0x14

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->accumulateDegrees:[F

    .line 52
    new-instance v0, Lcom/alipay/android/widgets/asset/piechart/HistoryManager;

    .line 53
    invoke-direct {v0}, Lcom/alipay/android/widgets/asset/piechart/HistoryManager;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->historyManager:Lcom/alipay/android/widgets/asset/piechart/HistoryManager;

    .line 55
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->h:Ljava/lang/Float;

    .line 57
    iput v2, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->i:F

    .line 59
    const/high16 v0, 0x42b40000    # 90.0f

    iput v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->j:F

    .line 61
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->k:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 63
    iput v2, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->l:F

    .line 65
    new-instance v0, Lcom/alipay/android/widgets/asset/piechart/PieChart$InitRenderModel;

    invoke-direct {v0, p0}, Lcom/alipay/android/widgets/asset/piechart/PieChart$InitRenderModel;-><init>(Lcom/alipay/android/widgets/asset/piechart/PieChart;)V

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->m:Lcom/alipay/android/widgets/asset/piechart/PieChart$InitRenderModel;

    .line 67
    new-instance v0, Lcom/alipay/android/widgets/asset/piechart/PieChart$RotateModel;

    invoke-direct {v0, p0}, Lcom/alipay/android/widgets/asset/piechart/PieChart$RotateModel;-><init>(Lcom/alipay/android/widgets/asset/piechart/PieChart;)V

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->n:Lcom/alipay/android/widgets/asset/piechart/PieChart$RotateModel;

    .line 69
    new-instance v0, Lcom/alipay/android/widgets/asset/piechart/PieChart$ProtrusionModel;

    invoke-direct {v0, p0}, Lcom/alipay/android/widgets/asset/piechart/PieChart$ProtrusionModel;-><init>(Lcom/alipay/android/widgets/asset/piechart/PieChart;)V

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->o:Lcom/alipay/android/widgets/asset/piechart/PieChart$ProtrusionModel;

    .line 71
    iput-object v1, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->p:Lcom/alipay/android/widgets/asset/piechart/listener/OnRenderFinishListener;

    .line 73
    iput-object v1, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->q:Lcom/alipay/android/widgets/asset/piechart/listener/OnSectorClickListener;

    .line 75
    iput-object v1, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->r:Lcom/alipay/android/widgets/asset/piechart/listener/OnSectorSelectedListener;

    .line 77
    iput-object v1, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->s:Lcom/alipay/android/widgets/asset/piechart/listener/OnCenterButtonClickListener;

    .line 79
    iput-object v1, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->t:Lcom/alipay/android/widgets/asset/piechart/listener/OnSectorChangeListener;

    .line 81
    iput-object v1, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->u:Lcom/alipay/android/widgets/asset/piechart/listener/OnCenterButtonLongClickListener;

    .line 83
    iput-object v1, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->v:Lcom/alipay/android/widgets/asset/piechart/listener/OnSectorLongClickListener;

    .line 85
    iput-object v1, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->w:Lcom/alipay/android/widgets/asset/piechart/listener/OnRotateFinishListener;

    .line 89
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->x:I

    .line 117
    const v0, 0x3f75c28f    # 0.96f

    iput v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->z:F

    .line 118
    const v0, 0x3f07ae14    # 0.53f

    iput v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->A:F

    .line 119
    iput v3, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->B:F

    .line 120
    iput v5, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->C:I

    .line 121
    const v0, 0xffffff

    iput v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->D:I

    .line 122
    iput v5, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->E:I

    .line 123
    const v0, 0x767676

    iput v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->F:I

    .line 124
    const v0, 0x3a83126f    # 0.001f

    iput v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->G:F

    .line 125
    iput v3, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->H:F

    .line 627
    iput v4, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->lastDrawWidth:I

    .line 1034
    iput-boolean v4, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->I:Z

    .line 106
    sget-object v0, Lcom/alipay/android/phone/wealth/home/R$styleable;->a:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 107
    invoke-direct {p0, v0}, Lcom/alipay/android/widgets/asset/piechart/PieChart;->a(Landroid/content/res/TypedArray;)V

    .line 108
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    .prologue
    const/high16 v5, 0x33000000

    const/4 v4, 0x0

    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 98
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    const/4 v0, 0x1

    iput v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->a:I

    .line 36
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->b:Landroid/graphics/Paint;

    .line 48
    const/16 v0, 0x14

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->accumulateDegrees:[F

    .line 52
    new-instance v0, Lcom/alipay/android/widgets/asset/piechart/HistoryManager;

    .line 53
    invoke-direct {v0}, Lcom/alipay/android/widgets/asset/piechart/HistoryManager;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->historyManager:Lcom/alipay/android/widgets/asset/piechart/HistoryManager;

    .line 55
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->h:Ljava/lang/Float;

    .line 57
    iput v2, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->i:F

    .line 59
    const/high16 v0, 0x42b40000    # 90.0f

    iput v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->j:F

    .line 61
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->k:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 63
    iput v2, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->l:F

    .line 65
    new-instance v0, Lcom/alipay/android/widgets/asset/piechart/PieChart$InitRenderModel;

    invoke-direct {v0, p0}, Lcom/alipay/android/widgets/asset/piechart/PieChart$InitRenderModel;-><init>(Lcom/alipay/android/widgets/asset/piechart/PieChart;)V

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->m:Lcom/alipay/android/widgets/asset/piechart/PieChart$InitRenderModel;

    .line 67
    new-instance v0, Lcom/alipay/android/widgets/asset/piechart/PieChart$RotateModel;

    invoke-direct {v0, p0}, Lcom/alipay/android/widgets/asset/piechart/PieChart$RotateModel;-><init>(Lcom/alipay/android/widgets/asset/piechart/PieChart;)V

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->n:Lcom/alipay/android/widgets/asset/piechart/PieChart$RotateModel;

    .line 69
    new-instance v0, Lcom/alipay/android/widgets/asset/piechart/PieChart$ProtrusionModel;

    invoke-direct {v0, p0}, Lcom/alipay/android/widgets/asset/piechart/PieChart$ProtrusionModel;-><init>(Lcom/alipay/android/widgets/asset/piechart/PieChart;)V

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->o:Lcom/alipay/android/widgets/asset/piechart/PieChart$ProtrusionModel;

    .line 71
    iput-object v1, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->p:Lcom/alipay/android/widgets/asset/piechart/listener/OnRenderFinishListener;

    .line 73
    iput-object v1, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->q:Lcom/alipay/android/widgets/asset/piechart/listener/OnSectorClickListener;

    .line 75
    iput-object v1, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->r:Lcom/alipay/android/widgets/asset/piechart/listener/OnSectorSelectedListener;

    .line 77
    iput-object v1, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->s:Lcom/alipay/android/widgets/asset/piechart/listener/OnCenterButtonClickListener;

    .line 79
    iput-object v1, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->t:Lcom/alipay/android/widgets/asset/piechart/listener/OnSectorChangeListener;

    .line 81
    iput-object v1, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->u:Lcom/alipay/android/widgets/asset/piechart/listener/OnCenterButtonLongClickListener;

    .line 83
    iput-object v1, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->v:Lcom/alipay/android/widgets/asset/piechart/listener/OnSectorLongClickListener;

    .line 85
    iput-object v1, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->w:Lcom/alipay/android/widgets/asset/piechart/listener/OnRotateFinishListener;

    .line 89
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->x:I

    .line 117
    const v0, 0x3f75c28f    # 0.96f

    iput v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->z:F

    .line 118
    const v0, 0x3f07ae14    # 0.53f

    iput v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->A:F

    .line 119
    iput v3, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->B:F

    .line 120
    iput v5, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->C:I

    .line 121
    const v0, 0xffffff

    iput v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->D:I

    .line 122
    iput v5, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->E:I

    .line 123
    const v0, 0x767676

    iput v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->F:I

    .line 124
    const v0, 0x3a83126f    # 0.001f

    iput v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->G:F

    .line 125
    iput v3, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->H:F

    .line 627
    iput v4, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->lastDrawWidth:I

    .line 1034
    iput-boolean v4, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->I:Z

    .line 99
    sget-object v0, Lcom/alipay/android/phone/wealth/home/R$styleable;->a:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 100
    invoke-direct {p0, v0}, Lcom/alipay/android/widgets/asset/piechart/PieChart;->a(Landroid/content/res/TypedArray;)V

    .line 101
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 102
    return-void
.end method

.method private static a(Lcom/alipay/android/widgets/asset/piechart/Point;Lcom/alipay/android/widgets/asset/piechart/Point;)F
    .locals 4

    .prologue
    .line 708
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 709
    :cond_0
    const/4 v0, 0x0

    .line 713
    :goto_0
    return v0

    .line 711
    :cond_1
    iget v0, p0, Lcom/alipay/android/widgets/asset/piechart/Point;->a:F

    iget v1, p1, Lcom/alipay/android/widgets/asset/piechart/Point;->a:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/alipay/android/widgets/asset/piechart/Point;->a:F

    iget v2, p1, Lcom/alipay/android/widgets/asset/piechart/Point;->a:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    .line 712
    iget v1, p0, Lcom/alipay/android/widgets/asset/piechart/Point;->b:F

    iget v2, p1, Lcom/alipay/android/widgets/asset/piechart/Point;->b:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/alipay/android/widgets/asset/piechart/Point;->b:F

    iget v3, p1, Lcom/alipay/android/widgets/asset/piechart/Point;->b:F

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    .line 713
    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    goto :goto_0
.end method

.method private a(F)I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 590
    iget-object v1, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->c:Lcom/alipay/android/widgets/asset/piechart/PieChartAdapter;

    if-eqz v1, :cond_0

    .line 591
    iget-object v1, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->c:Lcom/alipay/android/widgets/asset/piechart/PieChartAdapter;

    invoke-virtual {v1}, Lcom/alipay/android/widgets/asset/piechart/PieChartAdapter;->a()I

    move-result v1

    .line 593
    :goto_0
    add-int/lit8 v2, v1, -0x1

    if-lt v0, v2, :cond_1

    .line 600
    :cond_0
    return v0

    .line 594
    :cond_1
    iget-object v2, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->accumulateDegrees:[F

    aget v2, v2, v0

    iget-object v3, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->accumulateDegrees:[F

    add-int/lit8 v4, v0, 0x1

    aget v3, v3, v4

    invoke-static {v2, v3, p1}, Lcom/alipay/android/widgets/asset/piechart/PieChart;->isInThePointRange(FFF)Z

    move-result v2

    if-nez v2, :cond_0

    .line 593
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private a(Lcom/alipay/android/widgets/asset/piechart/Point;)I
    .locals 2

    .prologue
    .line 576
    invoke-direct {p0}, Lcom/alipay/android/widgets/asset/piechart/PieChart;->c()Lcom/alipay/android/widgets/asset/piechart/Point;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/alipay/android/widgets/asset/piechart/PieChart;->a(Lcom/alipay/android/widgets/asset/piechart/Point;Lcom/alipay/android/widgets/asset/piechart/Point;)F

    move-result v0

    invoke-direct {p0}, Lcom/alipay/android/widgets/asset/piechart/PieChart;->d()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 577
    const/4 v0, -0x1

    .line 580
    :goto_0
    return v0

    .line 579
    :cond_0
    invoke-direct {p0}, Lcom/alipay/android/widgets/asset/piechart/PieChart;->c()Lcom/alipay/android/widgets/asset/piechart/Point;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/alipay/android/widgets/asset/piechart/DegreeUtil;->a(Lcom/alipay/android/widgets/asset/piechart/Point;Lcom/alipay/android/widgets/asset/piechart/Point;)F

    move-result v0

    .line 580
    invoke-direct {p0, v0}, Lcom/alipay/android/widgets/asset/piechart/PieChart;->a(F)I

    move-result v0

    goto :goto_0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 290
    iget v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->j:F

    invoke-direct {p0, v0}, Lcom/alipay/android/widgets/asset/piechart/PieChart;->a(F)I

    move-result v0

    .line 291
    iget-object v1, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->t:Lcom/alipay/android/widgets/asset/piechart/listener/OnSectorChangeListener;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->x:I

    if-eq v0, v1, :cond_0

    .line 292
    iget-object v1, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->t:Lcom/alipay/android/widgets/asset/piechart/listener/OnSectorChangeListener;

    iget-object v1, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->c:Lcom/alipay/android/widgets/asset/piechart/PieChartAdapter;

    invoke-virtual {v1, v0}, Lcom/alipay/android/widgets/asset/piechart/PieChartAdapter;->a(I)Lcom/alipay/android/widgets/asset/piechart/PieChartSector;

    .line 294
    :cond_0
    iput v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->x:I

    .line 295
    return-void
.end method

.method private a(Landroid/content/res/TypedArray;)V
    .locals 8

    .prologue
    const/high16 v7, 0x33000000

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/high16 v4, 0x42b40000    # 90.0f

    const v3, 0x3f07ae14    # 0.53f

    .line 129
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/alipay/android/widgets/asset/piechart/PieChart;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, v1, p0, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    .line 131
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->accumulateDegrees:[F

    const/4 v1, 0x0

    aput v1, v0, v5

    .line 132
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 133
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 134
    if-eqz p1, :cond_0

    .line 135
    invoke-virtual {p1, v6, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->j:F

    .line 136
    invoke-virtual {p1, v5, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->i:F

    .line 137
    const/4 v0, 0x2

    const v1, 0x3f75c28f    # 0.96f

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->z:F

    .line 138
    const/4 v0, 0x3

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->A:F

    .line 139
    const/4 v0, 0x4

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->B:F

    .line 140
    const/4 v0, 0x5

    invoke-virtual {p1, v0, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->C:I

    .line 142
    const/4 v0, 0x6

    const v1, 0xffffff

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->D:I

    .line 143
    const/4 v0, 0x7

    invoke-virtual {p1, v0, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->E:I

    .line 145
    const/16 v0, 0x8

    const v1, 0x767676

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->F:I

    .line 146
    const/16 v0, 0x9

    const v1, 0x3a83126f    # 0.001f

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->G:F

    .line 148
    const/16 v0, 0xa

    const/high16 v1, 0x3f000000    # 0.5f

    .line 147
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->H:F

    .line 150
    :cond_0
    return-void
.end method

.method private a(Landroid/graphics/Canvas;FZ)V
    .locals 11

    .prologue
    .line 405
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->c:Lcom/alipay/android/widgets/asset/piechart/PieChartAdapter;

    if-eqz v0, :cond_1

    .line 406
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->accumulateDegrees:[F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->accumulateDegrees:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-static {v2}, Lcom/alipay/android/widgets/asset/piechart/DegreeUtil;->b(F)F

    move-result v2

    aput v2, v0, v1

    .line 407
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->c:Lcom/alipay/android/widgets/asset/piechart/PieChartAdapter;

    invoke-virtual {v0}, Lcom/alipay/android/widgets/asset/piechart/PieChartAdapter;->a()I

    move-result v7

    .line 408
    if-nez v7, :cond_2

    .line 409
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->b:Landroid/graphics/Paint;

    iget v1, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->F:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 410
    invoke-direct {p0}, Lcom/alipay/android/widgets/asset/piechart/PieChart;->c()Lcom/alipay/android/widgets/asset/piechart/Point;

    move-result-object v0

    iget v0, v0, Lcom/alipay/android/widgets/asset/piechart/Point;->a:F

    invoke-direct {p0}, Lcom/alipay/android/widgets/asset/piechart/PieChart;->c()Lcom/alipay/android/widgets/asset/piechart/Point;

    move-result-object v1

    iget v1, v1, Lcom/alipay/android/widgets/asset/piechart/Point;->b:F

    .line 411
    invoke-direct {p0}, Lcom/alipay/android/widgets/asset/piechart/PieChart;->d()F

    move-result v2

    iget v3, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->z:F

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->b:Landroid/graphics/Paint;

    .line 410
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 451
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->b:Landroid/graphics/Paint;

    iget v1, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->C:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 452
    invoke-direct {p0}, Lcom/alipay/android/widgets/asset/piechart/PieChart;->c()Lcom/alipay/android/widgets/asset/piechart/Point;

    move-result-object v0

    iget v0, v0, Lcom/alipay/android/widgets/asset/piechart/Point;->a:F

    invoke-direct {p0}, Lcom/alipay/android/widgets/asset/piechart/PieChart;->c()Lcom/alipay/android/widgets/asset/piechart/Point;

    move-result-object v1

    iget v1, v1, Lcom/alipay/android/widgets/asset/piechart/Point;->b:F

    .line 453
    invoke-direct {p0}, Lcom/alipay/android/widgets/asset/piechart/PieChart;->d()F

    move-result v2

    iget v3, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->A:F

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->b:Landroid/graphics/Paint;

    .line 452
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 455
    if-eqz p3, :cond_5

    .line 456
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->b:Landroid/graphics/Paint;

    iget v1, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->E:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 460
    :goto_0
    invoke-direct {p0}, Lcom/alipay/android/widgets/asset/piechart/PieChart;->c()Lcom/alipay/android/widgets/asset/piechart/Point;

    move-result-object v0

    iget v0, v0, Lcom/alipay/android/widgets/asset/piechart/Point;->a:F

    invoke-direct {p0}, Lcom/alipay/android/widgets/asset/piechart/PieChart;->c()Lcom/alipay/android/widgets/asset/piechart/Point;

    move-result-object v1

    iget v1, v1, Lcom/alipay/android/widgets/asset/piechart/Point;->b:F

    invoke-direct {p0}, Lcom/alipay/android/widgets/asset/piechart/PieChart;->d()F

    move-result v2

    .line 461
    iget v3, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->B:F

    mul-float/2addr v2, v3

    .line 462
    iget-object v3, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->b:Landroid/graphics/Paint;

    .line 460
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 464
    :cond_1
    return-void

    .line 413
    :cond_2
    const/4 v0, 0x0

    move v6, v0

    :goto_1
    if-ge v6, v7, :cond_0

    .line 414
    const-string/jumbo v0, "PieChart"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "draw pie i="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->c:Lcom/alipay/android/widgets/asset/piechart/PieChartAdapter;

    invoke-virtual {v0, v6}, Lcom/alipay/android/widgets/asset/piechart/PieChartAdapter;->a(I)Lcom/alipay/android/widgets/asset/piechart/PieChartSector;

    move-result-object v8

    .line 416
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->b:Landroid/graphics/Paint;

    invoke-virtual {v8}, Lcom/alipay/android/widgets/asset/piechart/PieChartSector;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 417
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_3

    .line 418
    const/4 v0, 0x1

    if-le v7, v0, :cond_3

    .line 419
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->accumulateDegrees:[F

    aget v0, v0, v6

    .line 420
    iget-object v1, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->accumulateDegrees:[F

    aget v1, v1, v6

    invoke-virtual {v8}, Lcom/alipay/android/widgets/asset/piechart/PieChartSector;->b()F

    move-result v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->j:F

    .line 419
    invoke-static {v0, v1, v2}, Lcom/alipay/android/widgets/asset/piechart/PieChart;->isInThePointRange(FFF)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 421
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {p0}, Lcom/alipay/android/widgets/asset/piechart/PieChart;->d()F

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    iget v3, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->z:F

    sub-float/2addr v2, v3

    mul-float/2addr v0, v2

    .line 422
    invoke-direct {p0}, Lcom/alipay/android/widgets/asset/piechart/PieChart;->d()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    iget v4, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->z:F

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    invoke-direct {p0}, Lcom/alipay/android/widgets/asset/piechart/PieChart;->d()F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    iget v5, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->z:F

    add-float/2addr v4, v5

    mul-float/2addr v3, v4

    .line 423
    invoke-direct {p0}, Lcom/alipay/android/widgets/asset/piechart/PieChart;->d()F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    iget v9, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->z:F

    add-float/2addr v5, v9

    mul-float/2addr v4, v5

    .line 421
    invoke-direct {v1, v0, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 425
    float-to-double v2, p2

    iget v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->j:F

    float-to-double v4, v0

    const-wide v9, 0x40091eb851eb851fL    # 3.14

    mul-double/2addr v4, v9

    const-wide v9, 0x4066800000000000L    # 180.0

    div-double/2addr v4, v9

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-float v0, v2

    .line 426
    float-to-double v2, p2

    iget v4, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->j:F

    float-to-double v4, v4

    const-wide v9, 0x40091eb851eb851fL    # 3.14

    mul-double/2addr v4, v9

    const-wide v9, 0x4066800000000000L    # 180.0

    div-double/2addr v4, v9

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-float v2, v2

    .line 427
    invoke-virtual {v1, v0, v2}, Landroid/graphics/RectF;->offset(FF)V

    .line 429
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->accumulateDegrees:[F

    aget v2, v0, v6

    invoke-virtual {v8}, Lcom/alipay/android/widgets/asset/piechart/PieChartSector;->b()F

    move-result v3

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->b:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 447
    :goto_2
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->accumulateDegrees:[F

    add-int/lit8 v1, v6, 0x1

    invoke-virtual {v8}, Lcom/alipay/android/widgets/asset/piechart/PieChartSector;->b()F

    move-result v2

    iget-object v3, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->accumulateDegrees:[F

    aget v3, v3, v6

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 413
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto/16 :goto_1

    .line 431
    :cond_3
    const/4 v0, 0x1

    if-le v7, v0, :cond_4

    invoke-virtual {v8}, Lcom/alipay/android/widgets/asset/piechart/PieChartSector;->b()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    .line 432
    invoke-virtual {v8}, Lcom/alipay/android/widgets/asset/piechart/PieChartSector;->b()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v3, v0, v1

    .line 443
    :goto_3
    invoke-direct {p0}, Lcom/alipay/android/widgets/asset/piechart/PieChart;->b()Landroid/graphics/RectF;

    move-result-object v1

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->accumulateDegrees:[F

    aget v2, v0, v6

    .line 444
    const/4 v4, 0x1

    iget-object v5, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->b:Landroid/graphics/Paint;

    move-object v0, p1

    .line 443
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_2

    .line 432
    :cond_4
    invoke-virtual {v8}, Lcom/alipay/android/widgets/asset/piechart/PieChartSector;->b()F

    move-result v3

    goto :goto_3

    .line 458
    :cond_5
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->b:Landroid/graphics/Paint;

    iget v1, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->D:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_0
.end method

.method private a(FF)Z
    .locals 3

    .prologue
    .line 538
    new-instance v0, Lcom/alipay/android/widgets/asset/piechart/Point;

    invoke-direct {v0, p1, p2}, Lcom/alipay/android/widgets/asset/piechart/Point;-><init>(FF)V

    invoke-direct {p0}, Lcom/alipay/android/widgets/asset/piechart/PieChart;->c()Lcom/alipay/android/widgets/asset/piechart/Point;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/widgets/asset/piechart/PieChart;->a(Lcom/alipay/android/widgets/asset/piechart/Point;Lcom/alipay/android/widgets/asset/piechart/Point;)F

    move-result v0

    .line 539
    iget v1, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->B:F

    invoke-direct {p0}, Lcom/alipay/android/widgets/asset/piechart/PieChart;->d()F

    move-result v2

    mul-float/2addr v1, v2

    cmpg-float v1, v0, v1

    if-ltz v1, :cond_0

    invoke-direct {p0}, Lcom/alipay/android/widgets/asset/piechart/PieChart;->d()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 540
    :cond_0
    const/4 v0, 0x0

    .line 542
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/alipay/android/widgets/asset/piechart/PieChart;Landroid/graphics/Canvas;FZ)V
    .locals 0

    .prologue
    .line 404
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/android/widgets/asset/piechart/PieChart;->a(Landroid/graphics/Canvas;FZ)V

    return-void
.end method

.method static synthetic access$1(Lcom/alipay/android/widgets/asset/piechart/PieChart;)F
    .locals 1

    .prologue
    .line 680
    invoke-direct {p0}, Lcom/alipay/android/widgets/asset/piechart/PieChart;->d()F

    move-result v0

    return v0
.end method

.method static synthetic access$2(Lcom/alipay/android/widgets/asset/piechart/PieChart;)F
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->z:F

    return v0
.end method

.method static synthetic access$3(Lcom/alipay/android/widgets/asset/piechart/PieChart;Landroid/graphics/Canvas;FI)V
    .locals 10

    .prologue
    .line 304
    const-string/jumbo v0, "PieChart"

    const-string/jumbo v1, "drawPieChartByDegress"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->c:Lcom/alipay/android/widgets/asset/piechart/PieChartAdapter;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->accumulateDegrees:[F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->accumulateDegrees:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-static {v2}, Lcom/alipay/android/widgets/asset/piechart/DegreeUtil;->b(F)F

    move-result v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->c:Lcom/alipay/android/widgets/asset/piechart/PieChartAdapter;

    invoke-virtual {v0}, Lcom/alipay/android/widgets/asset/piechart/PieChartAdapter;->a()I

    move-result v8

    if-nez v8, :cond_4

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->b:Landroid/graphics/Paint;

    iget v1, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->F:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-direct {p0}, Lcom/alipay/android/widgets/asset/piechart/PieChart;->b()Landroid/graphics/RectF;

    move-result-object v1

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->accumulateDegrees:[F

    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->b:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->b:Landroid/graphics/Paint;

    iget v1, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->C:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-direct {p0}, Lcom/alipay/android/widgets/asset/piechart/PieChart;->e()V

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->e:Landroid/graphics/RectF;

    if-nez v0, :cond_1

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {p0}, Lcom/alipay/android/widgets/asset/piechart/PieChart;->d()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    iget v3, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->A:F

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    invoke-direct {p0}, Lcom/alipay/android/widgets/asset/piechart/PieChart;->d()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    iget v4, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->A:F

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    invoke-direct {p0}, Lcom/alipay/android/widgets/asset/piechart/PieChart;->d()F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    iget v5, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->A:F

    add-float/2addr v4, v5

    mul-float/2addr v3, v4

    invoke-direct {p0}, Lcom/alipay/android/widgets/asset/piechart/PieChart;->d()F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    iget v6, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->A:F

    add-float/2addr v5, v6

    mul-float/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->e:Landroid/graphics/RectF;

    :cond_1
    iget-object v1, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->e:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->accumulateDegrees:[F

    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->b:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->b:Landroid/graphics/Paint;

    iget v1, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->D:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-direct {p0}, Lcom/alipay/android/widgets/asset/piechart/PieChart;->e()V

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->f:Landroid/graphics/RectF;

    if-nez v0, :cond_2

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {p0}, Lcom/alipay/android/widgets/asset/piechart/PieChart;->d()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    iget v3, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->B:F

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    invoke-direct {p0}, Lcom/alipay/android/widgets/asset/piechart/PieChart;->d()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    iget v4, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->B:F

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    invoke-direct {p0}, Lcom/alipay/android/widgets/asset/piechart/PieChart;->d()F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    iget v5, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->B:F

    add-float/2addr v4, v5

    mul-float/2addr v3, v4

    invoke-direct {p0}, Lcom/alipay/android/widgets/asset/piechart/PieChart;->d()F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    iget v6, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->B:F

    add-float/2addr v5, v6

    mul-float/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->f:Landroid/graphics/RectF;

    :cond_2
    iget-object v1, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->f:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->accumulateDegrees:[F

    const/4 v2, 0x0

    aget v2, v0, v2

    const/high16 v3, 0x43b40000    # 360.0f

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->b:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    const-string/jumbo v0, "PieChart"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "drawArc get radius: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/alipay/android/widgets/asset/piechart/PieChart;->d()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void

    :cond_4
    const/4 v0, 0x1

    if-ne p3, v0, :cond_6

    const-string/jumbo v0, "PieChart"

    const-string/jumbo v1, "drawRotateShow"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    move v6, v0

    :goto_1
    if-ge v6, v8, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->c:Lcom/alipay/android/widgets/asset/piechart/PieChartAdapter;

    invoke-virtual {v0, v6}, Lcom/alipay/android/widgets/asset/piechart/PieChartAdapter;->a(I)Lcom/alipay/android/widgets/asset/piechart/PieChartSector;

    move-result-object v7

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->b:Landroid/graphics/Paint;

    invoke-virtual {v7}, Lcom/alipay/android/widgets/asset/piechart/PieChartSector;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->accumulateDegrees:[F

    aget v0, v0, v6

    iget v1, v7, Lcom/alipay/android/widgets/asset/piechart/PieChartSector;->c:F

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->accumulateDegrees:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    add-float/2addr v1, p2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    invoke-direct {p0}, Lcom/alipay/android/widgets/asset/piechart/PieChart;->b()Landroid/graphics/RectF;

    move-result-object v1

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->accumulateDegrees:[F

    aget v2, v0, v6

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->accumulateDegrees:[F

    const/4 v3, 0x0

    aget v0, v0, v3

    add-float/2addr v0, p2

    iget-object v3, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->accumulateDegrees:[F

    aget v3, v3, v6

    sub-float v3, v0, v3

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->b:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto/16 :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/alipay/android/widgets/asset/piechart/PieChart;->b()Landroid/graphics/RectF;

    move-result-object v1

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->accumulateDegrees:[F

    aget v2, v0, v6

    iget v3, v7, Lcom/alipay/android/widgets/asset/piechart/PieChartSector;->c:F

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->b:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->accumulateDegrees:[F

    add-int/lit8 v1, v6, 0x1

    invoke-virtual {v7}, Lcom/alipay/android/widgets/asset/piechart/PieChartSector;->b()F

    move-result v2

    iget-object v3, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->accumulateDegrees:[F

    aget v3, v3, v6

    add-float/2addr v2, v3

    aput v2, v0, v1

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_1

    :cond_6
    const/4 v1, 0x0

    const-string/jumbo v0, "PieChart"

    const-string/jumbo v2, "drawRotateExtrude"

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    move v6, v0

    move v7, v1

    :goto_2
    if-ge v6, v8, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->c:Lcom/alipay/android/widgets/asset/piechart/PieChartAdapter;

    invoke-virtual {v0, v6}, Lcom/alipay/android/widgets/asset/piechart/PieChartAdapter;->a(I)Lcom/alipay/android/widgets/asset/piechart/PieChartSector;

    move-result-object v9

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->b:Landroid/graphics/Paint;

    invoke-virtual {v9}, Lcom/alipay/android/widgets/asset/piechart/PieChartSector;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v0, 0x1

    if-le v8, v0, :cond_7

    iget v0, v9, Lcom/alipay/android/widgets/asset/piechart/PieChartSector;->c:F

    mul-float/2addr v0, p2

    const/high16 v1, 0x43b40000    # 360.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_7

    iget v0, v9, Lcom/alipay/android/widgets/asset/piechart/PieChartSector;->c:F

    mul-float/2addr v0, p2

    const/high16 v1, 0x43b40000    # 360.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v3, v0, v1

    :goto_3
    invoke-direct {p0}, Lcom/alipay/android/widgets/asset/piechart/PieChart;->b()Landroid/graphics/RectF;

    move-result-object v1

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->accumulateDegrees:[F

    const/4 v2, 0x0

    aget v0, v0, v2

    add-float v2, v0, v7

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->b:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget v0, v9, Lcom/alipay/android/widgets/asset/piechart/PieChartSector;->c:F

    mul-float/2addr v0, p2

    const/high16 v1, 0x43b40000    # 360.0f

    div-float/2addr v0, v1

    add-float v1, v7, v0

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    move v7, v1

    goto :goto_2

    :cond_7
    iget v0, v9, Lcom/alipay/android/widgets/asset/piechart/PieChartSector;->c:F

    mul-float/2addr v0, p2

    const/high16 v1, 0x43b40000    # 360.0f

    div-float v3, v0, v1

    goto :goto_3
.end method

.method static synthetic access$4(Lcom/alipay/android/widgets/asset/piechart/PieChart;)F
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->j:F

    return v0
.end method

.method static synthetic access$5(Lcom/alipay/android/widgets/asset/piechart/PieChart;F)I
    .locals 1

    .prologue
    .line 589
    invoke-direct {p0, p1}, Lcom/alipay/android/widgets/asset/piechart/PieChart;->a(F)I

    move-result v0

    return v0
.end method

.method static synthetic access$6(Lcom/alipay/android/widgets/asset/piechart/PieChart;)Lcom/alipay/android/widgets/asset/piechart/PieChartAdapter;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->c:Lcom/alipay/android/widgets/asset/piechart/PieChartAdapter;

    return-object v0
.end method

.method static synthetic access$7(Lcom/alipay/android/widgets/asset/piechart/PieChart;Landroid/graphics/Canvas;Z)V
    .locals 1

    .prologue
    .line 393
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/alipay/android/widgets/asset/piechart/PieChart;->a(Landroid/graphics/Canvas;FZ)V

    return-void
.end method

.method private b()Landroid/graphics/RectF;
    .locals 7

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    .line 638
    invoke-direct {p0}, Lcom/alipay/android/widgets/asset/piechart/PieChart;->e()V

    .line 639
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->d:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    .line 640
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {p0}, Lcom/alipay/android/widgets/asset/piechart/PieChart;->d()F

    move-result v1

    iget v2, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->z:F

    sub-float v2, v6, v2

    mul-float/2addr v1, v2

    invoke-direct {p0}, Lcom/alipay/android/widgets/asset/piechart/PieChart;->d()F

    move-result v2

    .line 641
    iget v3, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->z:F

    sub-float v3, v6, v3

    mul-float/2addr v2, v3

    .line 642
    invoke-direct {p0}, Lcom/alipay/android/widgets/asset/piechart/PieChart;->d()F

    move-result v3

    iget v4, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->z:F

    add-float/2addr v4, v6

    mul-float/2addr v3, v4

    invoke-direct {p0}, Lcom/alipay/android/widgets/asset/piechart/PieChart;->d()F

    move-result v4

    iget v5, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->z:F

    add-float/2addr v5, v6

    mul-float/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 640
    iput-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->d:Landroid/graphics/RectF;

    .line 644
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->d:Landroid/graphics/RectF;

    return-object v0
.end method

.method private b(FF)Z
    .locals 6

    .prologue
    .line 561
    new-instance v0, Lcom/alipay/android/widgets/asset/piechart/Point;

    invoke-direct {v0, p1, p2}, Lcom/alipay/android/widgets/asset/piechart/Point;-><init>(FF)V

    invoke-direct {p0}, Lcom/alipay/android/widgets/asset/piechart/PieChart;->c()Lcom/alipay/android/widgets/asset/piechart/Point;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/widgets/asset/piechart/PieChart;->a(Lcom/alipay/android/widgets/asset/piechart/Point;Lcom/alipay/android/widgets/asset/piechart/Point;)F

    move-result v0

    .line 562
    float-to-double v0, v0

    iget v2, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->B:F

    invoke-direct {p0}, Lcom/alipay/android/widgets/asset/piechart/PieChart;->d()F

    move-result v3

    mul-float/2addr v2, v3

    float-to-double v2, v2

    const-wide v4, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v2, v4

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    .line 563
    const/4 v0, 0x1

    .line 565
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c()Lcom/alipay/android/widgets/asset/piechart/Point;
    .locals 4

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 673
    invoke-direct {p0}, Lcom/alipay/android/widgets/asset/piechart/PieChart;->e()V

    .line 674
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->g:Lcom/alipay/android/widgets/asset/piechart/Point;

    if-nez v0, :cond_0

    .line 675
    new-instance v0, Lcom/alipay/android/widgets/asset/piechart/Point;

    invoke-virtual {p0}, Lcom/alipay/android/widgets/asset/piechart/PieChart;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {p0}, Lcom/alipay/android/widgets/asset/piechart/PieChart;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/widgets/asset/piechart/Point;-><init>(FF)V

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->g:Lcom/alipay/android/widgets/asset/piechart/Point;

    .line 677
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->g:Lcom/alipay/android/widgets/asset/piechart/Point;

    return-object v0
.end method

.method private d()F
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 681
    invoke-direct {p0}, Lcom/alipay/android/widgets/asset/piechart/PieChart;->e()V

    .line 682
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->h:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sub-float/2addr v0, v4

    float-to-double v0, v0

    const-wide v2, -0x40af9db22d0e5604L    # -0.001

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->h:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sub-float/2addr v0, v4

    float-to-double v0, v0

    const-wide v2, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 683
    invoke-virtual {p0}, Lcom/alipay/android/widgets/asset/piechart/PieChart;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->h:Ljava/lang/Float;

    .line 685
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->h:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method private e()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 689
    iget v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->lastDrawWidth:I

    invoke-virtual {p0}, Lcom/alipay/android/widgets/asset/piechart/PieChart;->getMeasuredWidth()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 691
    iput-object v2, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->d:Landroid/graphics/RectF;

    .line 692
    iput-object v2, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->e:Landroid/graphics/RectF;

    .line 693
    iput-object v2, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->f:Landroid/graphics/RectF;

    .line 694
    iput-object v2, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->g:Lcom/alipay/android/widgets/asset/piechart/Point;

    .line 695
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->h:Ljava/lang/Float;

    .line 696
    invoke-virtual {p0}, Lcom/alipay/android/widgets/asset/piechart/PieChart;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->lastDrawWidth:I

    .line 698
    :cond_0
    return-void
.end method

.method public static isInThePointRange(FFF)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 613
    invoke-static {p0}, Lcom/alipay/android/widgets/asset/piechart/DegreeUtil;->b(F)F

    move-result v1

    .line 614
    invoke-static {p1}, Lcom/alipay/android/widgets/asset/piechart/DegreeUtil;->b(F)F

    move-result v2

    .line 615
    invoke-static {p2}, Lcom/alipay/android/widgets/asset/piechart/DegreeUtil;->b(F)F

    move-result v3

    .line 617
    cmpg-float v4, v1, v2

    if-gez v4, :cond_1

    cmpl-float v4, v3, v1

    if-ltz v4, :cond_1

    cmpg-float v4, v3, v2

    if-gtz v4, :cond_1

    .line 624
    :cond_0
    :goto_0
    return v0

    .line 620
    :cond_1
    cmpl-float v4, v1, v2

    if-lez v4, :cond_2

    .line 621
    cmpl-float v2, v3, v2

    if-ltz v2, :cond_0

    cmpg-float v1, v3, v1

    if-gtz v1, :cond_0

    .line 624
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getMeasureCallback()Lcom/alipay/android/widgets/asset/piechart/PieChart$MeasuareCallback;
    .locals 1

    .prologue
    .line 1194
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->measureCallback:Lcom/alipay/android/widgets/asset/piechart/PieChart$MeasuareCallback;

    return-object v0
.end method

.method public getPointDegree()F
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->j:F

    return v0
.end method

.method public getRotateSpeed()F
    .locals 1

    .prologue
    .line 161
    iget v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->y:F

    return v0
.end method

.method public initRender(FI)V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 189
    iget v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->a:I

    if-ne v0, v3, :cond_1

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->m:Lcom/alipay/android/widgets/asset/piechart/PieChart$InitRenderModel;

    iget v0, v0, Lcom/alipay/android/widgets/asset/piechart/PieChart$InitRenderModel;->a:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 197
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->x:I

    .line 199
    iget v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->i:F

    iget-object v1, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->accumulateDegrees:[F

    const/4 v2, 0x0

    aput v0, v1, v2

    .line 200
    iput v3, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->a:I

    .line 201
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->m:Lcom/alipay/android/widgets/asset/piechart/PieChart$InitRenderModel;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/android/widgets/asset/piechart/PieChart$InitRenderModel;->a(FI)V

    goto :goto_0
.end method

.method public isAnimationing()Z
    .locals 2

    .prologue
    .line 742
    iget v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->a:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->a:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 743
    iget v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->a:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 744
    :cond_0
    const/4 v0, 0x1

    .line 746
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1038
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->historyManager:Lcom/alipay/android/widgets/asset/piechart/HistoryManager;

    invoke-virtual {v0}, Lcom/alipay/android/widgets/asset/piechart/HistoryManager;->a()V

    .line 1039
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->historyManager:Lcom/alipay/android/widgets/asset/piechart/HistoryManager;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/alipay/android/widgets/asset/piechart/HistoryManager;->a(FFJ)V

    .line 1040
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    new-instance v4, Lcom/alipay/android/widgets/asset/piechart/Point;

    invoke-direct {v4, v0, v3}, Lcom/alipay/android/widgets/asset/piechart/Point;-><init>(FF)V

    invoke-direct {p0}, Lcom/alipay/android/widgets/asset/piechart/PieChart;->c()Lcom/alipay/android/widgets/asset/piechart/Point;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/alipay/android/widgets/asset/piechart/PieChart;->a(Lcom/alipay/android/widgets/asset/piechart/Point;Lcom/alipay/android/widgets/asset/piechart/Point;)F

    move-result v0

    iget v3, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->z:F

    invoke-direct {p0}, Lcom/alipay/android/widgets/asset/piechart/PieChart;->d()F

    move-result v4

    mul-float/2addr v3, v4

    cmpg-float v0, v0, v3

    if-gez v0, :cond_2

    move v0, v1

    :goto_0
    if-eqz v0, :cond_0

    .line 1041
    iget v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->a:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->r:Lcom/alipay/android/widgets/asset/piechart/listener/OnSectorSelectedListener;

    if-eqz v0, :cond_3

    .line 1042
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v0, v3}, Lcom/alipay/android/widgets/asset/piechart/PieChart;->a(FF)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1043
    iput v2, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->a:I

    .line 1044
    iget v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->j:F

    invoke-direct {p0, v0}, Lcom/alipay/android/widgets/asset/piechart/PieChart;->a(F)I

    move-result v0

    .line 1045
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget-object v2, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->c:Lcom/alipay/android/widgets/asset/piechart/PieChartAdapter;

    invoke-virtual {v2, v0}, Lcom/alipay/android/widgets/asset/piechart/PieChartAdapter;->a(I)Lcom/alipay/android/widgets/asset/piechart/PieChartSector;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1046
    iget-object v2, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->r:Lcom/alipay/android/widgets/asset/piechart/listener/OnSectorSelectedListener;

    iget-object v2, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->c:Lcom/alipay/android/widgets/asset/piechart/PieChartAdapter;

    invoke-virtual {v2, v0}, Lcom/alipay/android/widgets/asset/piechart/PieChartAdapter;->a(I)Lcom/alipay/android/widgets/asset/piechart/PieChartSector;

    .line 1047
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->accumulateDegrees:[F

    .line 1053
    :cond_0
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/alipay/android/widgets/asset/piechart/PieChart;->b(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1054
    iput-boolean v1, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->I:Z

    .line 1055
    invoke-virtual {p0}, Lcom/alipay/android/widgets/asset/piechart/PieChart;->postInvalidate()V

    .line 1057
    :cond_1
    return v1

    :cond_2
    move v0, v2

    .line 1040
    goto :goto_0

    .line 1050
    :cond_3
    iput v2, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->a:I

    goto :goto_1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 239
    iget v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->a:I

    packed-switch v0, :pswitch_data_0

    .line 281
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->k:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_4

    .line 284
    invoke-direct {p0}, Lcom/alipay/android/widgets/asset/piechart/PieChart;->d()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->z:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    iget-boolean v1, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->I:Z

    invoke-direct {p0, p1, v0, v1}, Lcom/alipay/android/widgets/asset/piechart/PieChart;->a(Landroid/graphics/Canvas;FZ)V

    .line 287
    :cond_0
    :goto_1
    return-void

    .line 241
    :pswitch_1
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->m:Lcom/alipay/android/widgets/asset/piechart/PieChart$InitRenderModel;

    invoke-virtual {v0, p1}, Lcom/alipay/android/widgets/asset/piechart/PieChart$InitRenderModel;->a(Landroid/graphics/Canvas;)I

    move-result v0

    if-ne v2, v0, :cond_0

    .line 242
    iput v1, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->a:I

    .line 243
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->p:Lcom/alipay/android/widgets/asset/piechart/listener/OnRenderFinishListener;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->p:Lcom/alipay/android/widgets/asset/piechart/listener/OnRenderFinishListener;

    .line 245
    iget-object v1, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->accumulateDegrees:[F

    aget v1, v1, v3

    invoke-static {v1}, Lcom/alipay/android/widgets/asset/piechart/DegreeUtil;->b(F)F

    move-result v1

    iget-object v2, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->c:Lcom/alipay/android/widgets/asset/piechart/PieChartAdapter;

    .line 244
    invoke-interface {v0, v1, v2}, Lcom/alipay/android/widgets/asset/piechart/listener/OnRenderFinishListener;->a(FLcom/alipay/android/widgets/asset/piechart/PieChartAdapter;)V

    goto :goto_1

    .line 250
    :pswitch_2
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->n:Lcom/alipay/android/widgets/asset/piechart/PieChart$RotateModel;

    invoke-virtual {v0, p1}, Lcom/alipay/android/widgets/asset/piechart/PieChart$RotateModel;->a(Landroid/graphics/Canvas;)I

    move-result v0

    if-ne v2, v0, :cond_1

    .line 251
    iput v1, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->a:I

    .line 252
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->w:Lcom/alipay/android/widgets/asset/piechart/listener/OnRotateFinishListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->c:Lcom/alipay/android/widgets/asset/piechart/PieChartAdapter;

    if-eqz v0, :cond_1

    .line 253
    iget v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->j:F

    invoke-direct {p0, v0}, Lcom/alipay/android/widgets/asset/piechart/PieChart;->a(F)I

    move-result v0

    .line 254
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->c:Lcom/alipay/android/widgets/asset/piechart/PieChartAdapter;

    invoke-virtual {v1}, Lcom/alipay/android/widgets/asset/piechart/PieChartAdapter;->a()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 255
    iget-object v1, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->w:Lcom/alipay/android/widgets/asset/piechart/listener/OnRotateFinishListener;

    iget-object v1, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->c:Lcom/alipay/android/widgets/asset/piechart/PieChartAdapter;

    invoke-virtual {v1, v0}, Lcom/alipay/android/widgets/asset/piechart/PieChartAdapter;->a(I)Lcom/alipay/android/widgets/asset/piechart/PieChartSector;

    .line 256
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->accumulateDegrees:[F

    .line 255
    :cond_1
    invoke-direct {p0}, Lcom/alipay/android/widgets/asset/piechart/PieChart;->a()V

    goto :goto_1

    .line 264
    :cond_2
    iget-object v1, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->accumulateDegrees:[F

    aget v2, v1, v3

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->k:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    add-float/2addr v0, v2

    aput v0, v1, v3

    .line 263
    :pswitch_3
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->k:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 266
    iget-boolean v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->I:Z

    invoke-direct {p0, p1, v4, v0}, Lcom/alipay/android/widgets/asset/piechart/PieChart;->a(Landroid/graphics/Canvas;FZ)V

    .line 267
    invoke-direct {p0}, Lcom/alipay/android/widgets/asset/piechart/PieChart;->a()V

    goto :goto_1

    .line 270
    :pswitch_4
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->o:Lcom/alipay/android/widgets/asset/piechart/PieChart$ProtrusionModel;

    invoke-virtual {v0, p1}, Lcom/alipay/android/widgets/asset/piechart/PieChart$ProtrusionModel;->a(Landroid/graphics/Canvas;)I

    move-result v0

    if-ne v2, v0, :cond_0

    .line 271
    iput v1, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->a:I

    goto :goto_1

    .line 276
    :cond_3
    iget-object v1, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->accumulateDegrees:[F

    aget v2, v1, v3

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->k:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    add-float/2addr v0, v2

    aput v0, v1, v3

    .line 275
    :pswitch_5
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->k:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    .line 278
    iget-boolean v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->I:Z

    invoke-direct {p0, p1, v4, v0}, Lcom/alipay/android/widgets/asset/piechart/PieChart;->a(Landroid/graphics/Canvas;FZ)V

    goto/16 :goto_1

    .line 282
    :cond_4
    iget-object v1, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->accumulateDegrees:[F

    aget v2, v1, v3

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->k:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    add-float/2addr v0, v2

    aput v0, v1, v3

    goto/16 :goto_0

    .line 239
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v2, -0x1

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v5, 0x0

    const/4 v1, 0x1

    .line 1129
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move v1, v0

    .line 1156
    :goto_0
    return v1

    .line 1132
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onFling("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")->("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1133
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "),e1getHistorySize:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1134
    const-string/jumbo v4, "e2getHistorySize:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1132
    iget-boolean v3, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->I:Z

    if-eqz v3, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/alipay/android/widgets/asset/piechart/PieChart;->b(FF)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1137
    iput-boolean v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->I:Z

    .line 1138
    invoke-virtual {p0}, Lcom/alipay/android/widgets/asset/piechart/PieChart;->postInvalidate()V

    .line 1155
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->historyManager:Lcom/alipay/android/widgets/asset/piechart/HistoryManager;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/alipay/android/widgets/asset/piechart/HistoryManager;->a(FFJ)V

    goto/16 :goto_0

    .line 1140
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v0, v3}, Lcom/alipay/android/widgets/asset/piechart/PieChart;->b(FF)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1141
    const/4 v0, 0x4

    iput v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->a:I

    .line 1142
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->historyManager:Lcom/alipay/android/widgets/asset/piechart/HistoryManager;

    invoke-virtual {v0}, Lcom/alipay/android/widgets/asset/piechart/HistoryManager;->b()Lcom/alipay/android/widgets/asset/piechart/HistoryModel;

    move-result-object v0

    .line 1143
    if-eqz v0, :cond_2

    .line 1144
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->historyManager:Lcom/alipay/android/widgets/asset/piechart/HistoryManager;

    invoke-direct {p0}, Lcom/alipay/android/widgets/asset/piechart/PieChart;->c()Lcom/alipay/android/widgets/asset/piechart/Point;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alipay/android/widgets/asset/piechart/HistoryManager;->a(Lcom/alipay/android/widgets/asset/piechart/Point;)F

    move-result v0

    .line 1145
    iget v3, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->H:F

    .line 1144
    mul-float/2addr v0, v3

    .line 1146
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v6

    if-lez v3, :cond_4

    .line 1147
    cmpl-float v0, v0, v5

    if-lez v0, :cond_5

    move v0, v1

    :goto_2
    int-to-float v0, v0

    mul-float/2addr v0, v6

    .line 1149
    :cond_4
    iget-object v3, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->n:Lcom/alipay/android/widgets/asset/piechart/PieChart$RotateModel;

    iget v4, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->G:F

    cmpl-float v5, v0, v5

    if-lez v5, :cond_6

    :goto_3
    int-to-float v2, v2

    mul-float/2addr v2, v4

    .line 1150
    invoke-virtual {v3, v0, v2}, Lcom/alipay/android/widgets/asset/piechart/PieChart$RotateModel;->a(FF)V

    .line 1151
    const/4 v0, 0x3

    iput v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->a:I

    goto :goto_1

    :cond_5
    move v0, v2

    .line 1147
    goto :goto_2

    :cond_6
    move v2, v1

    .line 1149
    goto :goto_3
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 3

    .prologue
    .line 1108
    iget v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->a:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 1121
    :cond_0
    :goto_0
    return-void

    .line 1111
    :cond_1
    iget-boolean v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->I:Z

    if-eqz v0, :cond_2

    .line 1112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->I:Z

    .line 1113
    invoke-virtual {p0}, Lcom/alipay/android/widgets/asset/piechart/PieChart;->postInvalidate()V

    .line 1115
    :cond_2
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->u:Lcom/alipay/android/widgets/asset/piechart/listener/OnCenterButtonLongClickListener;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/alipay/android/widgets/asset/piechart/PieChart;->b(FF)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1116
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->u:Lcom/alipay/android/widgets/asset/piechart/listener/OnCenterButtonLongClickListener;

    .line 1118
    :cond_3
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->v:Lcom/alipay/android/widgets/asset/piechart/listener/OnSectorLongClickListener;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/alipay/android/widgets/asset/piechart/PieChart;->a(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1119
    new-instance v0, Lcom/alipay/android/widgets/asset/piechart/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/widgets/asset/piechart/Point;-><init>(FF)V

    invoke-direct {p0, v0}, Lcom/alipay/android/widgets/asset/piechart/PieChart;->a(Lcom/alipay/android/widgets/asset/piechart/Point;)I

    move-result v0

    .line 1120
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->c:Lcom/alipay/android/widgets/asset/piechart/PieChartAdapter;

    invoke-virtual {v1, v0}, Lcom/alipay/android/widgets/asset/piechart/PieChartAdapter;->a(I)Lcom/alipay/android/widgets/asset/piechart/PieChartSector;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1121
    iget-object v1, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->v:Lcom/alipay/android/widgets/asset/piechart/listener/OnSectorLongClickListener;

    iget-object v1, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->c:Lcom/alipay/android/widgets/asset/piechart/PieChartAdapter;

    invoke-virtual {v1, v0}, Lcom/alipay/android/widgets/asset/piechart/PieChartAdapter;->a(I)Lcom/alipay/android/widgets/asset/piechart/PieChartSector;

    .line 1122
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->accumulateDegrees:[F

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 1

    .prologue
    .line 631
    invoke-super {p0, p1, p1}, Landroid/view/View;->onMeasure(II)V

    .line 632
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->measureCallback:Lcom/alipay/android/widgets/asset/piechart/PieChart$MeasuareCallback;

    if-eqz v0, :cond_0

    .line 633
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->measureCallback:Lcom/alipay/android/widgets/asset/piechart/PieChart$MeasuareCallback;

    .line 635
    :cond_0
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1089
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1103
    :cond_0
    :goto_0
    return v5

    .line 1092
    :cond_1
    iget-boolean v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->I:Z

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/alipay/android/widgets/asset/piechart/PieChart;->b(FF)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1093
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->I:Z

    .line 1094
    invoke-virtual {p0}, Lcom/alipay/android/widgets/asset/piechart/PieChart;->postInvalidate()V

    .line 1102
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->historyManager:Lcom/alipay/android/widgets/asset/piechart/HistoryManager;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alipay/android/widgets/asset/piechart/HistoryManager;->a(FFJ)V

    goto :goto_0

    .line 1095
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/alipay/android/widgets/asset/piechart/PieChart;->a(FF)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1096
    const/4 v0, 0x4

    iput v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->a:I

    .line 1097
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->historyManager:Lcom/alipay/android/widgets/asset/piechart/HistoryManager;

    invoke-virtual {v0}, Lcom/alipay/android/widgets/asset/piechart/HistoryManager;->b()Lcom/alipay/android/widgets/asset/piechart/HistoryModel;

    move-result-object v0

    .line 1098
    if-eqz v0, :cond_2

    .line 1099
    new-instance v1, Lcom/alipay/android/widgets/asset/piechart/Point;

    iget v2, v0, Lcom/alipay/android/widgets/asset/piechart/HistoryModel;->a:F

    iget v0, v0, Lcom/alipay/android/widgets/asset/piechart/HistoryModel;->b:F

    invoke-direct {v1, v2, v0}, Lcom/alipay/android/widgets/asset/piechart/Point;-><init>(FF)V

    new-instance v0, Lcom/alipay/android/widgets/asset/piechart/Point;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {v0, v2, v3}, Lcom/alipay/android/widgets/asset/piechart/Point;-><init>(FF)V

    invoke-direct {p0}, Lcom/alipay/android/widgets/asset/piechart/PieChart;->c()Lcom/alipay/android/widgets/asset/piechart/Point;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/android/widgets/asset/piechart/DegreeUtil;->a(Lcom/alipay/android/widgets/asset/piechart/Point;Lcom/alipay/android/widgets/asset/piechart/Point;)F

    move-result v0

    invoke-direct {p0}, Lcom/alipay/android/widgets/asset/piechart/PieChart;->c()Lcom/alipay/android/widgets/asset/piechart/Point;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/android/widgets/asset/piechart/DegreeUtil;->a(Lcom/alipay/android/widgets/asset/piechart/Point;Lcom/alipay/android/widgets/asset/piechart/Point;)F

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "new:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",last:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->l:F

    sub-float/2addr v0, v1

    add-float/2addr v0, v2

    iput v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->l:F

    iget v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->l:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->k:Ljava/util/concurrent/LinkedBlockingQueue;

    iget v1, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->l:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->l:F

    invoke-virtual {p0}, Lcom/alipay/android/widgets/asset/piechart/PieChart;->postInvalidate()V

    goto/16 :goto_1
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    .prologue
    .line 1062
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1066
    iget v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->a:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 1081
    :cond_0
    :goto_0
    return v3

    .line 1069
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/alipay/android/widgets/asset/piechart/PieChart;->a(FF)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1070
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->q:Lcom/alipay/android/widgets/asset/piechart/listener/OnSectorClickListener;

    if-eqz v0, :cond_2

    .line 1071
    new-instance v0, Lcom/alipay/android/widgets/asset/piechart/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 1072
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/widgets/asset/piechart/Point;-><init>(FF)V

    .line 1071
    invoke-direct {p0, v0}, Lcom/alipay/android/widgets/asset/piechart/PieChart;->a(Lcom/alipay/android/widgets/asset/piechart/Point;)I

    move-result v0

    .line 1073
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget-object v1, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->c:Lcom/alipay/android/widgets/asset/piechart/PieChartAdapter;

    invoke-virtual {v1, v0}, Lcom/alipay/android/widgets/asset/piechart/PieChartAdapter;->a(I)Lcom/alipay/android/widgets/asset/piechart/PieChartSector;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1074
    iget-object v1, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->q:Lcom/alipay/android/widgets/asset/piechart/listener/OnSectorClickListener;

    iget-object v1, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->c:Lcom/alipay/android/widgets/asset/piechart/PieChartAdapter;

    invoke-virtual {v1, v0}, Lcom/alipay/android/widgets/asset/piechart/PieChartAdapter;->a(I)Lcom/alipay/android/widgets/asset/piechart/PieChartSector;

    .line 1075
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->accumulateDegrees:[F

    .line 1074
    :cond_2
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->s:Lcom/alipay/android/widgets/asset/piechart/listener/OnCenterButtonClickListener;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/alipay/android/widgets/asset/piechart/PieChart;->b(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1079
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->s:Lcom/alipay/android/widgets/asset/piechart/listener/OnCenterButtonClickListener;

    goto :goto_0
.end method

.method public protrusion(J)V
    .locals 2

    .prologue
    .line 205
    iget v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 206
    const/4 v0, 0x5

    iput v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->a:I

    .line 207
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->o:Lcom/alipay/android/widgets/asset/piechart/PieChart$ProtrusionModel;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/android/widgets/asset/piechart/PieChart$ProtrusionModel;->a(J)V

    .line 209
    :cond_0
    return-void
.end method

.method public rotate(F)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 229
    iget v1, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->a:I

    if-eq v1, v0, :cond_0

    .line 230
    iget v1, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->a:I

    if-nez v1, :cond_1

    .line 231
    :cond_0
    const/4 v1, 0x3

    iput v1, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->a:I

    .line 232
    iget-object v1, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->n:Lcom/alipay/android/widgets/asset/piechart/PieChart$RotateModel;

    iget v2, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->y:F

    const/4 v3, 0x0

    cmpl-float v3, p1, v3

    if-lez v3, :cond_2

    :goto_0
    int-to-float v0, v0

    mul-float/2addr v0, v2

    .line 233
    iget v2, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->y:F

    div-float v2, p1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-long v2, v2

    .line 232
    invoke-virtual {v1, v0, v2, v3}, Lcom/alipay/android/widgets/asset/piechart/PieChart$RotateModel;->a(FJ)V

    .line 235
    :cond_1
    return-void

    .line 232
    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public rotateSectorToPoint(Lcom/alipay/android/widgets/asset/piechart/PieChartSector;F)V
    .locals 3

    .prologue
    .line 215
    invoke-virtual {p0}, Lcom/alipay/android/widgets/asset/piechart/PieChart;->getPointDegree()F

    move-result v0

    .line 216
    invoke-virtual {p1}, Lcom/alipay/android/widgets/asset/piechart/PieChartSector;->b()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v1, p2

    .line 217
    sub-float/2addr v0, v1

    .line 218
    invoke-static {v0}, Lcom/alipay/android/widgets/asset/piechart/DegreeUtil;->a(F)F

    move-result v0

    .line 219
    invoke-virtual {p0, v0}, Lcom/alipay/android/widgets/asset/piechart/PieChart;->rotate(F)V

    .line 220
    return-void
.end method

.method public setAdapter(Lcom/alipay/android/widgets/asset/piechart/PieChartAdapter;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->c:Lcom/alipay/android/widgets/asset/piechart/PieChartAdapter;

    .line 179
    return-void
.end method

.method public setMeasureCallback(Lcom/alipay/android/widgets/asset/piechart/PieChart$MeasuareCallback;)V
    .locals 0

    .prologue
    .line 1198
    iput-object p1, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->measureCallback:Lcom/alipay/android/widgets/asset/piechart/PieChart$MeasuareCallback;

    .line 1199
    return-void
.end method

.method public setMeasuredDimensionWrap(II)V
    .locals 0

    .prologue
    .line 1202
    invoke-virtual {p0, p1, p2}, Lcom/alipay/android/widgets/asset/piechart/PieChart;->setMeasuredDimension(II)V

    .line 1203
    return-void
.end method

.method public setOnCenterButtonClickListener(Lcom/alipay/android/widgets/asset/piechart/listener/OnCenterButtonClickListener;)V
    .locals 0

    .prologue
    .line 1172
    iput-object p1, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->s:Lcom/alipay/android/widgets/asset/piechart/listener/OnCenterButtonClickListener;

    .line 1173
    return-void
.end method

.method public setOnCenterButtonLongClickListener(Lcom/alipay/android/widgets/asset/piechart/listener/OnCenterButtonLongClickListener;)V
    .locals 0

    .prologue
    .line 1180
    iput-object p1, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->u:Lcom/alipay/android/widgets/asset/piechart/listener/OnCenterButtonLongClickListener;

    .line 1181
    return-void
.end method

.method public setOnRenderFinishListener(Lcom/alipay/android/widgets/asset/piechart/listener/OnRenderFinishListener;)V
    .locals 0

    .prologue
    .line 1160
    iput-object p1, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->p:Lcom/alipay/android/widgets/asset/piechart/listener/OnRenderFinishListener;

    .line 1161
    return-void
.end method

.method public setOnRotateFinishListener(Lcom/alipay/android/widgets/asset/piechart/listener/OnRotateFinishListener;)V
    .locals 0

    .prologue
    .line 1188
    iput-object p1, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->w:Lcom/alipay/android/widgets/asset/piechart/listener/OnRotateFinishListener;

    .line 1189
    return-void
.end method

.method public setOnSectorChangeListener(Lcom/alipay/android/widgets/asset/piechart/listener/OnSectorChangeListener;)V
    .locals 0

    .prologue
    .line 1176
    iput-object p1, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->t:Lcom/alipay/android/widgets/asset/piechart/listener/OnSectorChangeListener;

    .line 1177
    return-void
.end method

.method public setOnSectorClickListener(Lcom/alipay/android/widgets/asset/piechart/listener/OnSectorClickListener;)V
    .locals 0

    .prologue
    .line 1164
    iput-object p1, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->q:Lcom/alipay/android/widgets/asset/piechart/listener/OnSectorClickListener;

    .line 1165
    return-void
.end method

.method public setOnSectorLongClickListener(Lcom/alipay/android/widgets/asset/piechart/listener/OnSectorLongClickListener;)V
    .locals 0

    .prologue
    .line 1184
    iput-object p1, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->v:Lcom/alipay/android/widgets/asset/piechart/listener/OnSectorLongClickListener;

    .line 1185
    return-void
.end method

.method public setOnSectorSelectedListener(Lcom/alipay/android/widgets/asset/piechart/listener/OnSectorSelectedListener;)V
    .locals 0

    .prologue
    .line 1168
    iput-object p1, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->r:Lcom/alipay/android/widgets/asset/piechart/listener/OnSectorSelectedListener;

    .line 1169
    return-void
.end method

.method public setPointDegree(F)V
    .locals 0

    .prologue
    .line 153
    iput p1, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->j:F

    .line 154
    return-void
.end method

.method public setRotateSpeed(F)V
    .locals 1

    .prologue
    .line 165
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->y:F

    .line 166
    return-void
.end method
