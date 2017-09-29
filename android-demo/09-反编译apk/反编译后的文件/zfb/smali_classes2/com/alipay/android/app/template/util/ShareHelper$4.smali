.class Lcom/alipay/android/app/template/util/ShareHelper$4;
.super Landroid/os/AsyncTask;
.source "ShareHelper.java"


# instance fields
.field private final synthetic a:Landroid/content/Context;

.field private final synthetic b:Lcom/alipay/mobile/common/share/ShareContent;

.field private final synthetic c:Lcom/alipay/mobile/framework/service/ShareService;

.field private final synthetic d:I


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/alipay/mobile/common/share/ShareContent;Lcom/alipay/mobile/framework/service/ShareService;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/app/template/util/ShareHelper$4;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/alipay/android/app/template/util/ShareHelper$4;->b:Lcom/alipay/mobile/common/share/ShareContent;

    iput-object p3, p0, Lcom/alipay/android/app/template/util/ShareHelper$4;->c:Lcom/alipay/mobile/framework/service/ShareService;

    iput p4, p0, Lcom/alipay/android/app/template/util/ShareHelper$4;->d:I

    .line 194
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private varargs a()[B
    .locals 1

    .prologue
    .line 198
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/template/util/ShareHelper$4;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/android/app/template/util/ShareHelper;->a(Landroid/content/Context;)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 200
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/alipay/android/app/template/util/ShareHelper$4;->a()[B

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 1
    check-cast p1, [B

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/template/util/ShareHelper$4;->b:Lcom/alipay/mobile/common/share/ShareContent;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/share/ShareContent;->getExtraInfo()Ljava/util/HashMap;

    move-result-object v0

    const-string/jumbo v1, "thumbData"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string/jumbo v0, "20001002"

    iget-object v1, p0, Lcom/alipay/android/app/template/util/ShareHelper$4;->c:Lcom/alipay/mobile/framework/service/ShareService;

    iget v2, p0, Lcom/alipay/android/app/template/util/ShareHelper$4;->d:I

    iget-object v3, p0, Lcom/alipay/android/app/template/util/ShareHelper$4;->b:Lcom/alipay/mobile/common/share/ShareContent;

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/android/app/template/util/ShareHelper;->a(Ljava/lang/String;Lcom/alipay/mobile/framework/service/ShareService;ILcom/alipay/mobile/common/share/ShareContent;)V

    return-void
.end method
