.class public Lcom/alipay/mobile/nfc/ui/frgment/BusCardFragment;
.super Landroid/support/v4/app/Fragment;
.source "BusCardFragment.java"


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private b:Lcom/alipay/mobile/nfc/ui/NFCMainActivity;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-string/jumbo v0, "NFC/BusCard"

    sput-object v0, Lcom/alipay/mobile/nfc/ui/frgment/BusCardFragment;->a:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nfc/ui/frgment/BusCardFragment;)Lcom/alipay/mobile/nfc/ui/NFCMainActivity;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BusCardFragment;->b:Lcom/alipay/mobile/nfc/ui/NFCMainActivity;

    return-object v0
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 43
    check-cast p1, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;

    iput-object p1, p0, Lcom/alipay/mobile/nfc/ui/frgment/BusCardFragment;->b:Lcom/alipay/mobile/nfc/ui/NFCMainActivity;

    .line 44
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 49
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/nfc/ui/frgment/BusCardFragment;->a:Ljava/lang/String;

    const-string/jumbo v2, "onCreateView"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    sget v0, Lcom/alipay/mobile/nfc/R$layout;->c:I

    invoke-virtual {p1, v0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BusCardFragment;->c:Landroid/view/View;

    .line 51
    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BusCardFragment;->c:Landroid/view/View;

    sget v1, Lcom/alipay/mobile/nfc/R$id;->K:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->getImageBackButton()Lcom/alipay/mobile/commonui/widget/APImageButton;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/nfc/ui/frgment/BusCardFragment$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nfc/ui/frgment/BusCardFragment$1;-><init>(Lcom/alipay/mobile/nfc/ui/frgment/BusCardFragment;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    iget-object v1, p0, Lcom/alipay/mobile/nfc/ui/frgment/BusCardFragment;->c:Landroid/view/View;

    sget v0, Lcom/alipay/mobile/nfc/R$id;->p:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BusCardFragment;->d:Landroid/view/View;

    sget v0, Lcom/alipay/mobile/nfc/R$id;->r:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BusCardFragment;->e:Landroid/view/View;

    sget v0, Lcom/alipay/mobile/nfc/R$id;->q:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BusCardFragment;->f:Landroid/view/View;

    sget v0, Lcom/alipay/mobile/nfc/R$id;->P:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BusCardFragment;->g:Landroid/widget/TextView;

    sget v0, Lcom/alipay/mobile/nfc/R$id;->S:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BusCardFragment;->h:Landroid/widget/TextView;

    sget v0, Lcom/alipay/mobile/nfc/R$id;->Q:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BusCardFragment;->i:Landroid/widget/TextView;

    sget v0, Lcom/alipay/mobile/nfc/R$id;->O:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BusCardFragment;->j:Landroid/widget/TextView;

    sget v0, Lcom/alipay/mobile/nfc/R$id;->O:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BusCardFragment;->k:Landroid/widget/TextView;

    sget v0, Lcom/alipay/mobile/nfc/R$id;->T:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BusCardFragment;->l:Landroid/widget/TextView;

    sget v0, Lcom/alipay/mobile/nfc/R$id;->R:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BusCardFragment;->m:Landroid/widget/TextView;

    sget v0, Lcom/alipay/mobile/nfc/R$id;->e:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTableView;

    sget v1, Lcom/alipay/mobile/nfc/R$drawable;->d:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTableView;->setBackgroundResource(I)V

    new-instance v1, Lcom/alipay/mobile/nfc/ui/frgment/BusCardFragment$2;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nfc/ui/frgment/BusCardFragment$2;-><init>(Lcom/alipay/mobile/nfc/ui/frgment/BusCardFragment;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTableView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BusCardFragment;->b:Lcom/alipay/mobile/nfc/ui/NFCMainActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->b()Lcom/alipay/nfc/model/CardInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/nfc/ui/frgment/BusCardFragment;->g:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/alipay/nfc/model/CardInfo;->getBusi_type()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/alipay/mobile/nfc/ui/frgment/BusCardFragment;->h:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/alipay/nfc/model/CardInfo;->getCard_type()Lcom/alipay/nfc/model/CardTypeEnum;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/nfc/model/CardTypeEnum;->getMemo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/alipay/mobile/nfc/ui/frgment/BusCardFragment;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/alipay/nfc/model/CardInfo;->getSerl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/alipay/nfc/model/CardInfo;->getCash()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alipay/mobile/nfc/ui/frgment/BusCardFragment;->d:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    invoke-virtual {v0}, Lcom/alipay/nfc/model/CardInfo;->getCount()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alipay/mobile/nfc/ui/frgment/BusCardFragment;->e:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    invoke-virtual {v0}, Lcom/alipay/nfc/model/CardInfo;->getParams()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string/jumbo v0, "name"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BusCardFragment;->f:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/alipay/mobile/nfc/ui/frgment/BusCardFragment;->m:Landroid/widget/TextView;

    const-string/jumbo v0, "name"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    :cond_0
    :goto_2
    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BusCardFragment;->c:Landroid/view/View;

    return-object v0

    .line 53
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/nfc/ui/frgment/BusCardFragment;->d:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/alipay/mobile/nfc/ui/frgment/BusCardFragment;->k:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/alipay/nfc/model/CardInfo;->getCash()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "\u5143"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/nfc/ui/frgment/BusCardFragment;->e:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/alipay/mobile/nfc/ui/frgment/BusCardFragment;->l:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/alipay/nfc/model/CardInfo;->getCount()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "\u6b21"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BusCardFragment;->f:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method
