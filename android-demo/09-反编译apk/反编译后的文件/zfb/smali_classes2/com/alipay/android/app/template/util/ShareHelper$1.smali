.class Lcom/alipay/android/app/template/util/ShareHelper$1;
.super Ljava/lang/Object;
.source "ShareHelper.java"

# interfaces
.implements Lcom/alipay/mobile/commonui/widget/APPopMenu$OnItemClickListener;


# instance fields
.field private final synthetic a:Ljava/util/ArrayList;

.field private final synthetic b:Landroid/app/Activity;

.field private final synthetic c:Lcom/alibaba/fastjson/JSONObject;

.field private final synthetic d:Lcom/alipay/android/app/template/util/ShareHelper$ShareCallback;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Landroid/app/Activity;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/android/app/template/util/ShareHelper$ShareCallback;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/app/template/util/ShareHelper$1;->a:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/alipay/android/app/template/util/ShareHelper$1;->b:Landroid/app/Activity;

    iput-object p3, p0, Lcom/alipay/android/app/template/util/ShareHelper$1;->c:Lcom/alibaba/fastjson/JSONObject;

    iput-object p4, p0, Lcom/alipay/android/app/template/util/ShareHelper$1;->d:Lcom/alipay/android/app/template/util/ShareHelper$ShareCallback;

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 4

    .prologue
    .line 137
    iget-object v0, p0, Lcom/alipay/android/app/template/util/ShareHelper$1;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/share/ShareItem;

    .line 138
    iget-object v1, p0, Lcom/alipay/android/app/template/util/ShareHelper$1;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/share/ShareItem;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 139
    iget-object v1, p0, Lcom/alipay/android/app/template/util/ShareHelper$1;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcom/alipay/android/app/template/util/ShareHelper$1;->c:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/share/ShareItem;->getShareType()I

    move-result v0

    iget-object v3, p0, Lcom/alipay/android/app/template/util/ShareHelper$1;->d:Lcom/alipay/android/app/template/util/ShareHelper$ShareCallback;

    invoke-static {v1, v2, v0, v3}, Lcom/alipay/android/app/template/util/ShareHelper;->a(Landroid/content/Context;Lcom/alibaba/fastjson/JSONObject;ILcom/alipay/android/app/template/util/ShareHelper$ShareCallback;)V

    .line 140
    return-void
.end method
