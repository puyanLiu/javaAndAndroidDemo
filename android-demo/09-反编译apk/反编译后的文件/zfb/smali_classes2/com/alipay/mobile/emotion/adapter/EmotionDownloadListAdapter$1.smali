.class Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$1;
.super Ljava/lang/Object;
.source "EmotionDownloadListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter;

.field private final synthetic val$holder:Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$ViewHolder;

.field private final synthetic val$model:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter;Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$ViewHolder;Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$1;->this$0:Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter;

    iput-object p2, p0, Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$1;->val$holder:Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$ViewHolder;

    iput-object p3, p0, Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$1;->val$model:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 203
    iget-object v0, p0, Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$1;->this$0:Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter;

    iget-object v1, p0, Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$1;->val$holder:Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$ViewHolder;

    iget-object v2, p0, Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$1;->val$model:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter;->setDownloadingView(Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$ViewHolder;Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;)V

    .line 204
    iget-object v0, p0, Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$1;->this$0:Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter;

    iget-object v1, p0, Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$1;->val$holder:Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$ViewHolder;

    iget-object v2, p0, Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$1;->val$model:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter;->access$4(Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter;Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$ViewHolder;Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;)V

    .line 206
    return-void
.end method
