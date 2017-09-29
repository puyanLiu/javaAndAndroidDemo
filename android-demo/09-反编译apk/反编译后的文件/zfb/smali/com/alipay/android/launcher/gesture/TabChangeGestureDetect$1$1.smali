.class Lcom/alipay/android/launcher/gesture/TabChangeGestureDetect$1$1;
.super Ljava/lang/Object;
.source "TabChangeGestureDetect.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/alipay/android/launcher/gesture/TabChangeGestureDetect$1;

.field private final synthetic val$preListener:Landroid/view/View$OnClickListener;

.field private final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/alipay/android/launcher/gesture/TabChangeGestureDetect$1;Landroid/view/View$OnClickListener;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/launcher/gesture/TabChangeGestureDetect$1$1;->this$1:Lcom/alipay/android/launcher/gesture/TabChangeGestureDetect$1;

    iput-object p2, p0, Lcom/alipay/android/launcher/gesture/TabChangeGestureDetect$1$1;->val$preListener:Landroid/view/View$OnClickListener;

    iput-object p3, p0, Lcom/alipay/android/launcher/gesture/TabChangeGestureDetect$1$1;->val$v:Landroid/view/View;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/alipay/android/launcher/gesture/TabChangeGestureDetect$1$1;->val$preListener:Landroid/view/View$OnClickListener;

    iget-object v1, p0, Lcom/alipay/android/launcher/gesture/TabChangeGestureDetect$1$1;->val$v:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 54
    return-void
.end method
