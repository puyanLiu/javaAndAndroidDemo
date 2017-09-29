.class Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity$7;
.super Lcom/alipay/mobile/emotion/handle/msg/HandlerAdapter;
.source "EmotionStoreActivity.java"


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity$7;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity;

    .line 226
    invoke-direct {p0, p2}, Lcom/alipay/mobile/emotion/handle/msg/HandlerAdapter;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onMessage(Ljava/util/Map;Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 231
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity$7;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity;->refreshListView()V

    .line 232
    return-void
.end method
