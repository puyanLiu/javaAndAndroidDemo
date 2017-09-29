.class public Lcom/sina/weibo/sdk/api/share/WeiboDownloader;
.super Ljava/lang/Object;
.source "WeiboDownloader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 93
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v1, "http://app.sina.cn/appdetail.php?appID=84560"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static createDownloadConfirmDialog(Landroid/content/Context;Lcom/sina/weibo/sdk/api/share/IWeiboDownloadListener;)Landroid/app/Dialog;
    .locals 5

    .prologue
    .line 56
    const-string/jumbo v3, "\u63d0\u793a"

    .line 57
    const-string/jumbo v2, "\u672a\u5b89\u88c5\u5fae\u535a\u5ba2\u6237\u7aef\uff0c\u662f\u5426\u73b0\u5728\u53bb\u4e0b\u8f7d\uff1f"

    .line 58
    const-string/jumbo v1, "\u73b0\u5728\u4e0b\u8f7d"

    .line 59
    const-string/jumbo v0, "\u4ee5\u540e\u518d\u8bf4"

    .line 61
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/sina/weibo/sdk/utils/Utility;->isChineseLocale(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 62
    const-string/jumbo v3, "Notice"

    .line 63
    const-string/jumbo v2, "Sina Weibo client is not installed, download now?"

    .line 64
    const-string/jumbo v1, "Download Now"

    .line 65
    const-string/jumbo v0, "Download Later"

    .line 68
    :cond_0
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 69
    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 70
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 71
    new-instance v3, Lcom/sina/weibo/sdk/api/share/WeiboDownloader$1;

    invoke-direct {v3, p0}, Lcom/sina/weibo/sdk/api/share/WeiboDownloader$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 76
    new-instance v2, Lcom/sina/weibo/sdk/api/share/WeiboDownloader$2;

    invoke-direct {v2, p1}, Lcom/sina/weibo/sdk/api/share/WeiboDownloader$2;-><init>(Lcom/sina/weibo/sdk/api/share/IWeiboDownloadListener;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 83
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 68
    return-object v0
.end method
