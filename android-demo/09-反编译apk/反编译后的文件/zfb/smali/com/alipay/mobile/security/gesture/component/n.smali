.class final Lcom/alipay/mobile/security/gesture/component/n;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/gesture/component/n;->a:Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/n;->a:Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;->access$1(Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/n;->a:Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;

    invoke-static {v0}, Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;->access$2(Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;)Lcom/alipay/mobile/commonui/widget/APTitleBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonVisiable(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/n;->a:Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;

    invoke-static {v0}, Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;->access$3(Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;)Lcom/alipay/mobile/commonui/widget/APTextView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/n;->a:Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;

    invoke-static {v0}, Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;->access$3(Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;)Lcom/alipay/mobile/commonui/widget/APTextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/n;->a:Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;

    invoke-static {v0}, Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;->access$3(Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;)Lcom/alipay/mobile/commonui/widget/APTextView;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/component/n;->a:Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/a/b;->c:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/n;->a:Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;

    invoke-static {v0}, Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;->access$3(Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;)Lcom/alipay/mobile/commonui/widget/APTextView;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/a/f;->v:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/n;->a:Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;

    invoke-static {v0}, Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;->access$4(Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;)Lcom/alipay/mobile/security/gesture/component/LockIndicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/security/gesture/component/LockIndicator;->clear()V

    :cond_0
    return-void
.end method
