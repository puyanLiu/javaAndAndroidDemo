.class public Lcom/taobao/gcanvas/GCanvasRenderer$AsyncTaskParam;
.super Ljava/lang/Object;
.source "GCanvasRenderer.java"


# instance fields
.field public mBmp:Landroid/graphics/Bitmap;

.field public mFlipy:I

.field public mPath:Ljava/lang/String;

.field public mTarget:I

.field final synthetic this$0:Lcom/taobao/gcanvas/GCanvasRenderer;


# direct methods
.method public constructor <init>(Lcom/taobao/gcanvas/GCanvasRenderer;Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 679
    iput-object p1, p0, Lcom/taobao/gcanvas/GCanvasRenderer$AsyncTaskParam;->this$0:Lcom/taobao/gcanvas/GCanvasRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 680
    iput-object p2, p0, Lcom/taobao/gcanvas/GCanvasRenderer$AsyncTaskParam;->mPath:Ljava/lang/String;

    .line 681
    iput p3, p0, Lcom/taobao/gcanvas/GCanvasRenderer$AsyncTaskParam;->mTarget:I

    .line 682
    iput p4, p0, Lcom/taobao/gcanvas/GCanvasRenderer$AsyncTaskParam;->mFlipy:I

    .line 683
    return-void
.end method
