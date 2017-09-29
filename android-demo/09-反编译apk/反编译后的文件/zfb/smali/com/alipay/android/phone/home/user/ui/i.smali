.class final Lcom/alipay/android/phone/home/user/ui/i;
.super Ljava/lang/Object;
.source "UserInfoActivity_.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/home/user/ui/UserInfoActivity_;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/home/user/ui/UserInfoActivity_;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/alipay/android/phone/home/user/ui/i;->a:Lcom/alipay/android/phone/home/user/ui/UserInfoActivity_;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 75
    iget-object v1, p0, Lcom/alipay/android/phone/home/user/ui/i;->a:Lcom/alipay/android/phone/home/user/ui/UserInfoActivity_;

    new-instance v0, Lcom/alipay/mobile/commonui/widget/APNoticePopDialog;

    const-string/jumbo v2, ""

    sget v3, Lcom/alipay/android/phone/openplatform/R$string;->I:I

    invoke-virtual {v1, v3}, Lcom/alipay/android/phone/home/user/ui/UserInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/alipay/android/phone/openplatform/R$string;->H:I

    invoke-virtual {v1, v4}, Lcom/alipay/android/phone/home/user/ui/UserInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/alipay/android/phone/openplatform/R$string;->G:I

    invoke-virtual {v1, v5}, Lcom/alipay/android/phone/home/user/ui/UserInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/commonui/widget/APNoticePopDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/alipay/android/phone/home/user/ui/f;

    invoke-direct {v2, v1}, Lcom/alipay/android/phone/home/user/ui/f;-><init>(Lcom/alipay/android/phone/home/user/ui/UserInfoActivity;)V

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APNoticePopDialog;->setPositiveListener(Lcom/alipay/mobile/commonui/widget/APNoticePopDialog$OnClickPositiveListener;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APNoticePopDialog;->show()V

    .line 76
    return-void
.end method
