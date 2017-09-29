.class Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity$10;
.super Ljava/lang/Object;
.source "PhotoSelectActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity$10;->this$0:Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;

    .line 1253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1256
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity$10;->this$0:Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->access$17(Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;)Lcom/alipay/mobile/beehive/photo/data/BucketAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1257
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity$10;->this$0:Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->access$17(Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;)Lcom/alipay/mobile/beehive/photo/data/BucketAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity$10;->this$0:Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;

    invoke-static {v1}, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->access$14(Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;)Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;->getBucketList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/beehive/photo/data/BucketAdapter;->setData(Ljava/util/List;)V

    .line 1258
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity$10;->this$0:Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->access$17(Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;)Lcom/alipay/mobile/beehive/photo/data/BucketAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/photo/data/BucketAdapter;->notifyDataSetChanged()V

    .line 1259
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity$10;->this$0:Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;

    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity$10;->this$0:Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;

    invoke-static {v1}, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->access$12(Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->access$13(Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;Ljava/lang/String;)V

    .line 1260
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity$10;->this$0:Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->access$18(Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;)V

    .line 1262
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1263
    const-string/jumbo v1, "com.alipay.mobile.beehive.photo.ACTION_PHOTO_ADAPTER_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1264
    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity$10;->this$0:Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;

    invoke-virtual {v1}, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 1266
    :cond_0
    return-void
.end method
