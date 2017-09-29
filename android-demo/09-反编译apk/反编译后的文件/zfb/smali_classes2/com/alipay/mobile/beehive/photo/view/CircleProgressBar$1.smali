.class Lcom/alipay/mobile/beehive/photo/view/CircleProgressBar$1;
.super Ljava/lang/Object;
.source "CircleProgressBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/beehive/photo/view/CircleProgressBar;

.field private final synthetic val$progress:I


# direct methods
.method constructor <init>(Lcom/alipay/mobile/beehive/photo/view/CircleProgressBar;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/beehive/photo/view/CircleProgressBar$1;->this$0:Lcom/alipay/mobile/beehive/photo/view/CircleProgressBar;

    iput p2, p0, Lcom/alipay/mobile/beehive/photo/view/CircleProgressBar$1;->val$progress:I

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/CircleProgressBar$1;->this$0:Lcom/alipay/mobile/beehive/photo/view/CircleProgressBar;

    iget v1, p0, Lcom/alipay/mobile/beehive/photo/view/CircleProgressBar$1;->val$progress:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/beehive/photo/view/CircleProgressBar;->setProgress(I)V

    .line 163
    return-void
.end method
