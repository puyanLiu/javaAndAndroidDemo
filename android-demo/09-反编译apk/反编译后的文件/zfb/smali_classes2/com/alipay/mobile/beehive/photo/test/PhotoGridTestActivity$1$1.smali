.class Lcom/alipay/mobile/beehive/photo/test/PhotoGridTestActivity$1$1;
.super Ljava/lang/Object;
.source "PhotoGridTestActivity.java"

# interfaces
.implements Lcom/alipay/mobile/beehive/service/PhotoSelectListener;


# instance fields
.field final synthetic this$1:Lcom/alipay/mobile/beehive/photo/test/PhotoGridTestActivity$1;

.field private final synthetic val$gridLayout:Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/beehive/photo/test/PhotoGridTestActivity$1;Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/beehive/photo/test/PhotoGridTestActivity$1$1;->this$1:Lcom/alipay/mobile/beehive/photo/test/PhotoGridTestActivity$1;

    iput-object p2, p0, Lcom/alipay/mobile/beehive/photo/test/PhotoGridTestActivity$1$1;->val$gridLayout:Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPhotoSelected(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/beehive/service/PhotoInfo;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/test/PhotoGridTestActivity$1$1;->val$gridLayout:Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->setImagesData(Ljava/util/List;)V

    .line 53
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/test/PhotoGridTestActivity$1$1;->this$1:Lcom/alipay/mobile/beehive/photo/test/PhotoGridTestActivity$1;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/photo/test/PhotoGridTestActivity$1;->access$0(Lcom/alipay/mobile/beehive/photo/test/PhotoGridTestActivity$1;)Lcom/alipay/mobile/beehive/photo/test/PhotoGridTestActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/beehive/photo/test/PhotoGridTestActivity;->access$4(Lcom/alipay/mobile/beehive/photo/test/PhotoGridTestActivity;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/test/PhotoGridTestActivity$1$1;->this$1:Lcom/alipay/mobile/beehive/photo/test/PhotoGridTestActivity$1;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/photo/test/PhotoGridTestActivity$1;->access$0(Lcom/alipay/mobile/beehive/photo/test/PhotoGridTestActivity$1;)Lcom/alipay/mobile/beehive/photo/test/PhotoGridTestActivity;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/alipay/mobile/beehive/photo/test/PhotoGridTestActivity;->access$6(Lcom/alipay/mobile/beehive/photo/test/PhotoGridTestActivity;Ljava/util/List;)V

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/test/PhotoGridTestActivity$1$1;->this$1:Lcom/alipay/mobile/beehive/photo/test/PhotoGridTestActivity$1;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/photo/test/PhotoGridTestActivity$1;->access$0(Lcom/alipay/mobile/beehive/photo/test/PhotoGridTestActivity$1;)Lcom/alipay/mobile/beehive/photo/test/PhotoGridTestActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/beehive/photo/test/PhotoGridTestActivity;->access$4(Lcom/alipay/mobile/beehive/photo/test/PhotoGridTestActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 57
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/test/PhotoGridTestActivity$1$1;->this$1:Lcom/alipay/mobile/beehive/photo/test/PhotoGridTestActivity$1;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/photo/test/PhotoGridTestActivity$1;->access$0(Lcom/alipay/mobile/beehive/photo/test/PhotoGridTestActivity$1;)Lcom/alipay/mobile/beehive/photo/test/PhotoGridTestActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/beehive/photo/test/PhotoGridTestActivity;->access$4(Lcom/alipay/mobile/beehive/photo/test/PhotoGridTestActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 58
    return-void
.end method

.method public onSelectCanceled()V
    .locals 0

    .prologue
    .line 63
    return-void
.end method
