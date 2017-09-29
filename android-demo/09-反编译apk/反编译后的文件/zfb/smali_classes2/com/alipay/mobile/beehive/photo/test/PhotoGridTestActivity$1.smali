.class Lcom/alipay/mobile/beehive/photo/test/PhotoGridTestActivity$1;
.super Ljava/lang/Object;
.source "PhotoGridTestActivity.java"

# interfaces
.implements Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout$OnItemClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/beehive/photo/test/PhotoGridTestActivity;

.field private final synthetic val$gridLayout:Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/beehive/photo/test/PhotoGridTestActivity;Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/beehive/photo/test/PhotoGridTestActivity$1;->this$0:Lcom/alipay/mobile/beehive/photo/test/PhotoGridTestActivity;

    iput-object p2, p0, Lcom/alipay/mobile/beehive/photo/test/PhotoGridTestActivity$1;->val$gridLayout:Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/alipay/mobile/beehive/photo/test/PhotoGridTestActivity$1;)Lcom/alipay/mobile/beehive/photo/test/PhotoGridTestActivity;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/test/PhotoGridTestActivity$1;->this$0:Lcom/alipay/mobile/beehive/photo/test/PhotoGridTestActivity;

    return-object v0
.end method


# virtual methods
.method public onItemClick(JLandroid/view/View;Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;)V
    .locals 5

    .prologue
    .line 38
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "click "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->Toast(Ljava/lang/String;I)V

    .line 39
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 40
    const-class v1, Lcom/alipay/mobile/beehive/service/PhotoService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 39
    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/service/PhotoService;

    .line 41
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 42
    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/test/PhotoGridTestActivity$1;->this$0:Lcom/alipay/mobile/beehive/photo/test/PhotoGridTestActivity;

    invoke-static {v1}, Lcom/alipay/mobile/beehive/photo/test/PhotoGridTestActivity;->access$4(Lcom/alipay/mobile/beehive/photo/test/PhotoGridTestActivity;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 43
    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/test/PhotoGridTestActivity$1;->this$0:Lcom/alipay/mobile/beehive/photo/test/PhotoGridTestActivity;

    invoke-static {v1}, Lcom/alipay/mobile/beehive/photo/test/PhotoGridTestActivity;->access$4(Lcom/alipay/mobile/beehive/photo/test/PhotoGridTestActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 47
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 48
    const-string/jumbo v3, "selectedPhotoPaths"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 49
    iget-object v2, p0, Lcom/alipay/mobile/beehive/photo/test/PhotoGridTestActivity$1;->this$0:Lcom/alipay/mobile/beehive/photo/test/PhotoGridTestActivity;

    invoke-static {v2}, Lcom/alipay/mobile/beehive/photo/test/PhotoGridTestActivity;->access$5(Lcom/alipay/mobile/beehive/photo/test/PhotoGridTestActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v2

    new-instance v3, Lcom/alipay/mobile/beehive/photo/test/PhotoGridTestActivity$1$1;

    iget-object v4, p0, Lcom/alipay/mobile/beehive/photo/test/PhotoGridTestActivity$1;->val$gridLayout:Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;

    invoke-direct {v3, p0, v4}, Lcom/alipay/mobile/beehive/photo/test/PhotoGridTestActivity$1$1;-><init>(Lcom/alipay/mobile/beehive/photo/test/PhotoGridTestActivity$1;Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;)V

    invoke-virtual {v0, v2, v1, v3}, Lcom/alipay/mobile/beehive/service/PhotoService;->selectPhoto(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/os/Bundle;Lcom/alipay/mobile/beehive/service/PhotoSelectListener;)V

    .line 65
    return-void

    .line 43
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/beehive/service/PhotoInfo;

    .line 44
    invoke-virtual {v1}, Lcom/alipay/mobile/beehive/service/PhotoInfo;->getPhotoPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onItemLongClick(JLandroid/view/View;Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;)V
    .locals 3

    .prologue
    .line 69
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "long click "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->Toast(Ljava/lang/String;I)V

    .line 70
    return-void
.end method
