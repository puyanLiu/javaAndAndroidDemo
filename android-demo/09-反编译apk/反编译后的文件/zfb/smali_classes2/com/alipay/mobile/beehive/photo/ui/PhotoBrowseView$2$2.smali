.class Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$2$2;
.super Ljava/lang/Object;
.source "PhotoBrowseView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic this$1:Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$2;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$2$2;->this$1:Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$2;

    .line 1433
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 1436
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$2$2;->this$1:Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$2;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$2;->access$0(Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$2;)Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->access$7(Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$ScanTask;)V

    .line 1437
    return-void
.end method
