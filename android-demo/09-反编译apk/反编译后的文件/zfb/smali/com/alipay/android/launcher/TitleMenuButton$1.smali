.class Lcom/alipay/android/launcher/TitleMenuButton$1;
.super Ljava/lang/Object;
.source "TitleMenuButton.java"

# interfaces
.implements Lcom/alipay/mobile/commonui/widget/APPopMenu$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/launcher/TitleMenuButton;


# direct methods
.method constructor <init>(Lcom/alipay/android/launcher/TitleMenuButton;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/launcher/TitleMenuButton$1;->a:Lcom/alipay/android/launcher/TitleMenuButton;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/alipay/android/launcher/TitleMenuButton$1;->a:Lcom/alipay/android/launcher/TitleMenuButton;

    invoke-static {v0}, Lcom/alipay/android/launcher/TitleMenuButton;->access$0(Lcom/alipay/android/launcher/TitleMenuButton;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/alipay/android/launcher/TitleMenuButton$1;->a:Lcom/alipay/android/launcher/TitleMenuButton;

    invoke-static {v0}, Lcom/alipay/android/launcher/TitleMenuButton;->access$0(Lcom/alipay/android/launcher/TitleMenuButton;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/launcher/TitleMenuItem;

    invoke-virtual {v0}, Lcom/alipay/android/launcher/TitleMenuItem;->onClick()V

    .line 80
    :cond_0
    return-void
.end method
