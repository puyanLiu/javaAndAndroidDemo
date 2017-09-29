.class public final Lcom/alipay/mobile/security/gesture/ui/ad;
.super Lcom/alipay/mobile/security/gesture/ui/aa;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/security/gesture/ui/aa;-><init>(Landroid/content/Context;I)V

    sget v0, Lcom/alipay/mobile/a/d;->g:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/gesture/ui/ad;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/ad;->d:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    return-void
.end method


# virtual methods
.method public final b(I)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/ad;->d:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/ad;->d:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->setBackgroundResource(I)V

    goto :goto_0
.end method
