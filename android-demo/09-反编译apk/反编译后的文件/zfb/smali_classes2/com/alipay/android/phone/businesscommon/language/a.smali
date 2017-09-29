.class final Lcom/alipay/android/phone/businesscommon/language/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/businesscommon/language/LanguageAdapter;

.field private final synthetic b:I

.field private final synthetic c:Lcom/alipay/android/phone/businesscommon/language/b;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/businesscommon/language/LanguageAdapter;ILcom/alipay/android/phone/businesscommon/language/b;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/businesscommon/language/a;->a:Lcom/alipay/android/phone/businesscommon/language/LanguageAdapter;

    iput p2, p0, Lcom/alipay/android/phone/businesscommon/language/a;->b:I

    iput-object p3, p0, Lcom/alipay/android/phone/businesscommon/language/a;->c:Lcom/alipay/android/phone/businesscommon/language/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/language/a;->a:Lcom/alipay/android/phone/businesscommon/language/LanguageAdapter;

    iget v1, p0, Lcom/alipay/android/phone/businesscommon/language/a;->b:I

    invoke-static {v0, v1}, Lcom/alipay/android/phone/businesscommon/language/LanguageAdapter;->a(Lcom/alipay/android/phone/businesscommon/language/LanguageAdapter;I)V

    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/language/a;->a:Lcom/alipay/android/phone/businesscommon/language/LanguageAdapter;

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/language/LanguageAdapter;->a(Lcom/alipay/android/phone/businesscommon/language/LanguageAdapter;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/language/a;->a:Lcom/alipay/android/phone/businesscommon/language/LanguageAdapter;

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/language/LanguageAdapter;->a(Lcom/alipay/android/phone/businesscommon/language/LanguageAdapter;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/language/a;->c:Lcom/alipay/android/phone/businesscommon/language/b;

    iget-object v0, v0, Lcom/alipay/android/phone/businesscommon/language/b;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/language/a;->a:Lcom/alipay/android/phone/businesscommon/language/LanguageAdapter;

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/language/a;->c:Lcom/alipay/android/phone/businesscommon/language/b;

    iget-object v1, v1, Lcom/alipay/android/phone/businesscommon/language/b;->b:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/alipay/android/phone/businesscommon/language/LanguageAdapter;->a(Lcom/alipay/android/phone/businesscommon/language/LanguageAdapter;Landroid/widget/ImageView;)V

    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/language/a;->a:Lcom/alipay/android/phone/businesscommon/language/LanguageAdapter;

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/language/LanguageAdapter;->b(Lcom/alipay/android/phone/businesscommon/language/LanguageAdapter;)I

    move-result v0

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/language/a;->a:Lcom/alipay/android/phone/businesscommon/language/LanguageAdapter;

    invoke-static {v1}, Lcom/alipay/android/phone/businesscommon/language/LanguageAdapter;->c(Lcom/alipay/android/phone/businesscommon/language/LanguageAdapter;)I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/language/a;->a:Lcom/alipay/android/phone/businesscommon/language/LanguageAdapter;

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/language/LanguageAdapter;->d(Lcom/alipay/android/phone/businesscommon/language/LanguageAdapter;)Lcom/alipay/mobile/commonui/widget/APButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APButton;->setEnabled(Z)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/language/a;->a:Lcom/alipay/android/phone/businesscommon/language/LanguageAdapter;

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/language/LanguageAdapter;->d(Lcom/alipay/android/phone/businesscommon/language/LanguageAdapter;)Lcom/alipay/mobile/commonui/widget/APButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setEnabled(Z)V

    goto :goto_0
.end method
