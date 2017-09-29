.class Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$6;
.super Ljava/lang/Object;
.source "PhotoBrowseView.java"

# interfaces
.implements Lcom/alipay/mobile/beehive/photo/wrapper/ImageHelper$LoadListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$6;->this$0:Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;

    .line 1820
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadCanceled(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1833
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$6;->this$0:Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;

    invoke-static {v0, p1}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->access$14(Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;Ljava/lang/String;)V

    .line 1834
    return-void
.end method

.method public onLoadComplete(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1828
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$6;->this$0:Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;

    invoke-static {v0, p1}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->access$13(Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;Ljava/lang/String;)V

    .line 1829
    return-void
.end method

.method public onLoadFailed(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1838
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$6;->this$0:Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;

    invoke-static {v0, p1}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->access$15(Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;Ljava/lang/String;)V

    .line 1839
    return-void
.end method

.method public onLoadProgress(Ljava/lang/String;II)V
    .locals 1

    .prologue
    .line 1823
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$6;->this$0:Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;

    invoke-static {v0, p1, p2, p3}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->access$12(Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;Ljava/lang/String;II)V

    .line 1824
    return-void
.end method
