.class public Lcom/alipay/android/widgets/asset/InsuranceDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "InsuranceDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/view/View;

.field private b:Lcom/alipay/mobile/commonui/widget/APCheckBox;

.field private c:Lcom/alipay/android/widgets/asset/listener/PayResultListener;

.field private d:Lcom/alipay/mobile/commonbiz/image/ImageWorkerCallback;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 56
    new-instance v0, Lcom/alipay/android/widgets/asset/l;

    invoke-direct {v0, p0}, Lcom/alipay/android/widgets/asset/l;-><init>(Lcom/alipay/android/widgets/asset/InsuranceDialogFragment;)V

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/InsuranceDialogFragment;->d:Lcom/alipay/mobile/commonbiz/image/ImageWorkerCallback;

    .line 46
    return-void
.end method

.method static synthetic a(Lcom/alipay/android/widgets/asset/InsuranceDialogFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/InsuranceDialogFragment;->a:Landroid/view/View;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/android/widgets/asset/InsuranceDialogFragment;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 198
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierServcie;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierServcie;

    new-instance v1, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;

    invoke-direct {v1}, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;-><init>()V

    invoke-virtual {v1, p1}, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->setOrderNo(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->setShowBizResultPage(Z)V

    new-instance v2, Lcom/alipay/android/widgets/asset/o;

    invoke-direct {v2, p0}, Lcom/alipay/android/widgets/asset/o;-><init>(Lcom/alipay/android/widgets/asset/InsuranceDialogFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierServcie;->boot(Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierCallback;)V

    return-void
.end method

.method static synthetic b(Lcom/alipay/android/widgets/asset/InsuranceDialogFragment;)Lcom/alipay/mobile/commonui/widget/APCheckBox;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/InsuranceDialogFragment;->b:Lcom/alipay/mobile/commonui/widget/APCheckBox;

    return-object v0
.end method

.method static synthetic c(Lcom/alipay/android/widgets/asset/InsuranceDialogFragment;)Lcom/alipay/android/widgets/asset/listener/PayResultListener;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/InsuranceDialogFragment;->c:Lcom/alipay/android/widgets/asset/listener/PayResultListener;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/alipay/android/widgets/asset/listener/PayResultListener;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/alipay/android/widgets/asset/InsuranceDialogFragment;->c:Lcom/alipay/android/widgets/asset/listener/PayResultListener;

    .line 138
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 150
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/alipay/android/phone/wealth/home/R$id;->k:I

    if-ne v0, v1, :cond_1

    .line 151
    invoke-virtual {p0}, Lcom/alipay/android/widgets/asset/InsuranceDialogFragment;->dismiss()V

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 152
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/alipay/android/phone/wealth/home/R$id;->s:I

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/alipay/android/phone/wealth/home/R$id;->t:I

    if-ne v0, v1, :cond_5

    .line 153
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "InsuranceDialogFragment"

    const-string/jumbo v2, "openProtocol"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/android/widgets/asset/InsuranceDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/android/widgets/asset/InsuranceDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "protocol_url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "http"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "https"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "u"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "st"

    const-string/jumbo v2, "YES"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "sb"

    const-string/jumbo v2, "NO"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/alipay/mobile/h5container/api/H5Bundle;

    invoke-direct {v1}, Lcom/alipay/mobile/h5container/api/H5Bundle;-><init>()V

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/h5container/api/H5Bundle;->setParams(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v2, Lcom/alipay/mobile/h5container/service/H5Service;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/service/H5Service;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findTopRunningApp()Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/alipay/mobile/h5container/service/H5Service;->startPage(Lcom/alipay/mobile/framework/app/MicroApplication;Lcom/alipay/mobile/h5container/api/H5Bundle;)V

    goto/16 :goto_0

    :cond_4
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v2, Lcom/alipay/mobile/framework/service/common/SchemeService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/SchemeService;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/SchemeService;->process(Landroid/net/Uri;)I

    goto/16 :goto_0

    .line 154
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/alipay/android/phone/wealth/home/R$id;->j:I

    if-ne v0, v1, :cond_0

    .line 155
    new-instance v0, Lcom/alipay/android/widgets/asset/p;

    invoke-direct {v0, p0}, Lcom/alipay/android/widgets/asset/p;-><init>(Lcom/alipay/android/widgets/asset/InsuranceDialogFragment;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/alipay/android/widgets/asset/InsuranceDialogFragment;->b:Lcom/alipay/mobile/commonui/widget/APCheckBox;

    invoke-virtual {v3}, Lcom/alipay/mobile/commonui/widget/APCheckBox;->isChecked()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/alipay/android/widgets/asset/p;->start([Ljava/lang/Object;)V

    .line 156
    invoke-static {}, Lcom/alipay/android/widgets/asset/utils/LogAgentUtil;->e()V

    goto/16 :goto_0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 143
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 144
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 145
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .prologue
    .line 85
    sget v0, Lcom/alipay/android/phone/wealth/home/R$layout;->f:I

    invoke-virtual {p1, v0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7

    .prologue
    .line 90
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/DialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 92
    new-instance v1, Lcom/alipay/mobile/commonbiz/image/ImageWorker;

    invoke-virtual {p0}, Lcom/alipay/android/widgets/asset/InsuranceDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alipay/mobile/commonbiz/image/ImageWorker;-><init>(Landroid/content/Context;)V

    .line 93
    const v0, 0x7fffffff

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonbiz/image/ImageWorker;->setCachePeriod(I)Lcom/alipay/mobile/commonbiz/image/ImageWorker;

    .line 95
    invoke-virtual {p0}, Lcom/alipay/android/widgets/asset/InsuranceDialogFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v2, Lcom/alipay/android/phone/wealth/home/R$id;->M:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APCheckBox;

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/InsuranceDialogFragment;->b:Lcom/alipay/mobile/commonui/widget/APCheckBox;

    .line 96
    invoke-virtual {p0}, Lcom/alipay/android/widgets/asset/InsuranceDialogFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v2, Lcom/alipay/android/phone/wealth/home/R$id;->N:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    .line 98
    iget-object v2, p0, Lcom/alipay/android/widgets/asset/InsuranceDialogFragment;->b:Lcom/alipay/mobile/commonui/widget/APCheckBox;

    new-instance v3, Lcom/alipay/android/widgets/asset/m;

    invoke-direct {v3, p0}, Lcom/alipay/android/widgets/asset/m;-><init>(Lcom/alipay/android/widgets/asset/InsuranceDialogFragment;)V

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/commonui/widget/APCheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 107
    new-instance v2, Lcom/alipay/android/widgets/asset/n;

    invoke-direct {v2, p0}, Lcom/alipay/android/widgets/asset/n;-><init>(Lcom/alipay/android/widgets/asset/InsuranceDialogFragment;)V

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    sget v0, Lcom/alipay/android/phone/wealth/home/R$id;->Z:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/InsuranceDialogFragment;->a:Landroid/view/View;

    .line 118
    sget v0, Lcom/alipay/android/phone/wealth/home/R$id;->k:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    .line 119
    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    sget v0, Lcom/alipay/android/phone/wealth/home/R$id;->s:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 121
    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    sget v0, Lcom/alipay/android/phone/wealth/home/R$id;->j:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APButton;

    .line 123
    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    invoke-virtual {p0}, Lcom/alipay/android/widgets/asset/InsuranceDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 125
    sget v0, Lcom/alipay/android/phone/wealth/home/R$id;->w:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 126
    invoke-virtual {p0}, Lcom/alipay/android/widgets/asset/InsuranceDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "title"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    sget v0, Lcom/alipay/android/phone/wealth/home/R$id;->r:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 128
    sget v2, Lcom/alipay/android/phone/wealth/home/R$string;->r:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 129
    invoke-virtual {p0}, Lcom/alipay/android/widgets/asset/InsuranceDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "pay_amount"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 128
    invoke-virtual {p0, v2, v3}, Lcom/alipay/android/widgets/asset/InsuranceDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    sget v0, Lcom/alipay/android/phone/wealth/home/R$id;->l:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 131
    invoke-virtual {p0}, Lcom/alipay/android/widgets/asset/InsuranceDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "compensation"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    invoke-virtual {p0}, Lcom/alipay/android/widgets/asset/InsuranceDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v2, "bg_image"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/android/widgets/asset/InsuranceDialogFragment;->d:Lcom/alipay/mobile/commonbiz/image/ImageWorkerCallback;

    invoke-virtual {v1, v0, v2}, Lcom/alipay/mobile/commonbiz/image/ImageWorker;->loadImage(Ljava/lang/String;Lcom/alipay/mobile/commonbiz/image/ImageWorkerCallback;)Lcom/alipay/mobile/commonbiz/image/ImageWorker;

    .line 134
    :cond_0
    return-void
.end method
