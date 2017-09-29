.class Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$5$2;
.super Ljava/lang/Object;
.source "PhotoBrowseView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic this$1:Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$5;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$5;)V
    .locals 0

    .prologue
    .line 1433
    iput-object p1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$5$2;->this$1:Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 1436
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$5$2;->this$1:Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$5;

    iget-object v0, v0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$5;->this$0:Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->access$1602(Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$ScanTask;)Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$ScanTask;

    .line 1437
    return-void
.end method
