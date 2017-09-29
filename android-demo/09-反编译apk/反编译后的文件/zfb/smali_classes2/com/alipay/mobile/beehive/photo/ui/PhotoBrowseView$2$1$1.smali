.class Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$2$1$1;
.super Ljava/lang/Object;
.source "PhotoBrowseView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$2:Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$2$1;

.field private final synthetic val$code:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$2$1;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$2$1$1;->this$2:Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$2$1;

    iput-object p2, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$2$1$1;->val$code:Ljava/lang/String;

    .line 1419
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1422
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$2$1$1;->this$2:Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$2$1;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$2$1;->access$0(Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$2$1;)Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$2;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$2;->access$0(Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$2;)Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->access$9(Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;)Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$ScanTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1423
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$2$1$1;->this$2:Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$2$1;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$2$1;->access$0(Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$2$1;)Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$2;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$2;->access$0(Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$2;)Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->access$9(Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;)Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$ScanTask;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$2$1$1;->val$code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$ScanTask;->setQrCode(Ljava/lang/String;)V

    .line 1424
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$2$1$1;->this$2:Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$2$1;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$2$1;->access$0(Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$2$1;)Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$2;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$2;->access$0(Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$2;)Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->access$9(Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;)Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$ScanTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$ScanTask;->run()V

    .line 1426
    :cond_0
    return-void
.end method
