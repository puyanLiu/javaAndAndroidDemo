.class Lcom/alipay/android/launcher/TitleMenuButton$2;
.super Ljava/lang/Object;
.source "TitleMenuButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/launcher/TitleMenuButton;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Lcom/alipay/android/launcher/TitleMenuButton;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/launcher/TitleMenuButton$2;->a:Lcom/alipay/android/launcher/TitleMenuButton;

    iput p2, p0, Lcom/alipay/android/launcher/TitleMenuButton$2;->b:I

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alipay/android/launcher/TitleMenuButton$2;->a:Lcom/alipay/android/launcher/TitleMenuButton;

    invoke-static {v0}, Lcom/alipay/android/launcher/TitleMenuButton;->access$1(Lcom/alipay/android/launcher/TitleMenuButton;)Lcom/alipay/mobile/commonui/widget/APPopMenu;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/launcher/TitleMenuButton$2;->a:Lcom/alipay/android/launcher/TitleMenuButton;

    invoke-static {v1}, Lcom/alipay/android/launcher/TitleMenuButton;->access$2(Lcom/alipay/android/launcher/TitleMenuButton;)Lcom/alipay/mobile/commonui/widget/APImageView;

    move-result-object v1

    iget v2, p0, Lcom/alipay/android/launcher/TitleMenuButton$2;->b:I

    neg-int v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/commonui/widget/APPopMenu;->showAsDropDown(Landroid/view/View;II)V

    .line 87
    return-void
.end method
