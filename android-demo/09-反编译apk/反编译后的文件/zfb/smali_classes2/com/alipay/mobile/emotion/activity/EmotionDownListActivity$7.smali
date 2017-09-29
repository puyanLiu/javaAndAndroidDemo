.class Lcom/alipay/mobile/emotion/activity/EmotionDownListActivity$7;
.super Lcom/alipay/mobile/emotion/handle/msg/HandlerAdapter;
.source "EmotionDownListActivity.java"


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/emotion/activity/EmotionDownListActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/emotion/activity/EmotionDownListActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/emotion/activity/EmotionDownListActivity$7;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionDownListActivity;

    .line 225
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
    .line 230
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDownListActivity$7;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionDownListActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/emotion/activity/EmotionDownListActivity;->refreshListView()V

    .line 231
    return-void
.end method
