.class public Lcom/alipay/android/phone/messageboxapp/ui/h;
.super Landroid/support/v4/app/Fragment;
.source "MsgboxListFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/app/Fragment;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# static fields
.field private static final l:Ljava/lang/String;


# instance fields
.field protected a:Lcom/alipay/mobile/commonui/widget/APListView;

.field protected b:Lcom/alipay/mobile/commonui/widget/APImageView;

.field protected c:Lcom/alipay/mobile/commonui/widget/APTextView;

.field protected d:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

.field protected e:Lcom/alipay/mobile/commonui/widget/APImageView;

.field f:Z

.field protected g:Landroid/view/View$OnClickListener;

.field protected h:Landroid/view/View$OnClickListener;

.field protected i:Landroid/view/ViewStub;

.field protected j:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

.field protected k:Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;

.field private m:Landroid/view/View;

.field private n:Z

.field private o:I

.field private p:Lcom/alipay/android/phone/messageboxapp/ui/f;

.field private q:Lcom/alipay/android/phone/messageboxstatic/api/FriendstabAccessService;

.field private r:Z

.field private s:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

.field private t:Ljava/lang/String;

.field private u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/messageboxstatic/api/model/MessageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private w:Lcom/alipay/android/phone/messageboxstatic/api/MsgboxInfoService;

.field private x:Lcom/alipay/mmmbbbxxx/b/a;

.field private y:Lcom/alipay/mobile/framework/service/ext/security/AuthService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const-class v0, Lcom/alipay/android/phone/messageboxapp/ui/h;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/phone/messageboxapp/ui/h;->l:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 55
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 64
    iput-boolean v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->n:Z

    .line 67
    iput v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->o:I

    .line 76
    iput-boolean v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->r:Z

    .line 92
    iput-boolean v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->f:Z

    .line 94
    new-instance v0, Lcom/alipay/android/phone/messageboxapp/ui/i;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/messageboxapp/ui/i;-><init>(Lcom/alipay/android/phone/messageboxapp/ui/h;)V

    iput-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->g:Landroid/view/View$OnClickListener;

    .line 134
    new-instance v0, Lcom/alipay/android/phone/messageboxapp/ui/j;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/messageboxapp/ui/j;-><init>(Lcom/alipay/android/phone/messageboxapp/ui/h;)V

    iput-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->h:Landroid/view/View$OnClickListener;

    .line 325
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->u:Ljava/util/List;

    .line 326
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->v:Ljava/util/List;

    .line 55
    return-void
.end method

.method static synthetic a(Lcom/alipay/android/phone/messageboxapp/ui/h;)V
    .locals 0

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/alipay/android/phone/messageboxapp/ui/h;->g()V

    return-void
.end method

.method static synthetic b(Lcom/alipay/android/phone/messageboxapp/ui/h;)Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->n:Z

    return v0
.end method

.method static synthetic c(Lcom/alipay/android/phone/messageboxapp/ui/h;)I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->o:I

    return v0
.end method

.method static synthetic d(Lcom/alipay/android/phone/messageboxapp/ui/h;)Ljava/util/List;
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->v:Ljava/util/List;

    return-object v0
.end method

.method static synthetic e(Lcom/alipay/android/phone/messageboxapp/ui/h;)V
    .locals 3

    .prologue
    .line 251
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->u:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/android/phone/messageboxapp/ui/h;->d()V

    :cond_1
    invoke-direct {p0}, Lcom/alipay/android/phone/messageboxapp/ui/h;->h()V

    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->p:Lcom/alipay/android/phone/messageboxapp/ui/f;

    iget-object v1, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->u:Ljava/util/List;

    iget-object v2, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->v:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/phone/messageboxapp/ui/f;->a(Ljava/util/List;Ljava/util/List;)V

    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->p:Lcom/alipay/android/phone/messageboxapp/ui/f;

    invoke-virtual {v0}, Lcom/alipay/android/phone/messageboxapp/ui/f;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->k:Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;

    iget-object v1, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->k:Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;

    invoke-virtual {v0}, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->a()V

    new-instance v0, Lcom/alipay/android/phone/messageboxapp/ui/m;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/messageboxapp/ui/m;-><init>(Lcom/alipay/android/phone/messageboxapp/ui/h;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/alipay/android/phone/messageboxapp/ui/h;->l:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/alipay/android/phone/messageboxapp/ui/h;)Ljava/util/List;
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->u:Ljava/util/List;

    return-object v0
.end method

.method private g()V
    .locals 2

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->f:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->o:I

    if-lez v0, :cond_1

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->b:Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v1, Lcom/alipay/android/phone/messageboxapp/R$drawable;->delete:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setBackgroundResource(I)V

    .line 119
    :goto_0
    return-void

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->b:Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v1, Lcom/alipay/android/phone/messageboxapp/R$drawable;->half_delete:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method static synthetic g(Lcom/alipay/android/phone/messageboxapp/ui/h;)V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->o:I

    return-void
.end method

.method private h()V
    .locals 2

    .prologue
    .line 305
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->t:Ljava/lang/String;

    const-string/jumbo v1, "TODO"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->k:Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->a(I)V

    .line 310
    :goto_0
    return-void

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->k:Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->a(I)V

    goto :goto_0
.end method

.method static synthetic h(Lcom/alipay/android/phone/messageboxapp/ui/h;)V
    .locals 0

    .prologue
    .line 604
    invoke-direct {p0}, Lcom/alipay/android/phone/messageboxapp/ui/h;->i()V

    return-void
.end method

.method private i()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 605
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 606
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->v:Ljava/util/List;

    move v0, v1

    .line 607
    :goto_0
    if-lt v0, v2, :cond_0

    .line 610
    return-void

    .line 608
    :cond_0
    iget-object v3, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->v:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 607
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic i(Lcom/alipay/android/phone/messageboxapp/ui/h;)V
    .locals 0

    .prologue
    .line 304
    invoke-direct {p0}, Lcom/alipay/android/phone/messageboxapp/ui/h;->h()V

    return-void
.end method

.method static synthetic j(Lcom/alipay/android/phone/messageboxapp/ui/h;)Lcom/alipay/android/phone/messageboxapp/ui/f;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->p:Lcom/alipay/android/phone/messageboxapp/ui/f;

    return-object v0
.end method

.method static synthetic k(Lcom/alipay/android/phone/messageboxapp/ui/h;)Lcom/alipay/android/phone/messageboxstatic/api/MsgboxInfoService;
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->w:Lcom/alipay/android/phone/messageboxstatic/api/MsgboxInfoService;

    return-object v0
.end method

.method static synthetic l(Lcom/alipay/android/phone/messageboxapp/ui/h;)Lcom/alipay/android/phone/messageboxstatic/api/FriendstabAccessService;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->q:Lcom/alipay/android/phone/messageboxstatic/api/FriendstabAccessService;

    return-object v0
.end method

.method static synthetic m(Lcom/alipay/android/phone/messageboxapp/ui/h;)Lcom/alipay/mobile/framework/service/ext/security/AuthService;
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->y:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    return-object v0
.end method

.method static synthetic n(Lcom/alipay/android/phone/messageboxapp/ui/h;)Lcom/alipay/mmmbbbxxx/b/a;
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->x:Lcom/alipay/mmmbbbxxx/b/a;

    return-object v0
.end method

.method static synthetic o(Lcom/alipay/android/phone/messageboxapp/ui/h;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->t:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method final a()V
    .locals 2

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->f:Z

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->e:Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v1, Lcom/alipay/android/phone/messageboxapp/R$drawable;->checked:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageResource(I)V

    .line 111
    :goto_0
    return-void

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->e:Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v1, Lcom/alipay/android/phone/messageboxapp/R$drawable;->notchecked:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method final a(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 556
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.eg.android.AlipayGphone.push.action.SYNC_PUSH_MESSAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 557
    const-string/jumbo v1, "op_type"

    const-string/jumbo v2, "removeBoxMsg"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 558
    const-string/jumbo v1, "tMsgId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 559
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/android/phone/messageboxapp/ui/h;->l:Ljava/lang/String;

    .line 560
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u53d1\u9001\u5df2\u8bfb\u6d88\u606f\u7ed9push\uff0c\u53c2\u6570\u4e3a\uff1areadMsgIntent = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 559
    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    iget-object v1, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->k:Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 562
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/messageboxapp/ui/h;->l:Ljava/lang/String;

    const-string/jumbo v2, "\u53d1\u9001\u5df2\u8bfb\u6d88\u606f\u7ed9push\uff0c\u53d1\u9001\u5b8c\u6bd5"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    return-void
.end method

.method public final a(Z)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 569
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->u:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 588
    :cond_0
    :goto_0
    return-void

    .line 572
    :cond_1
    iput-boolean p1, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->n:Z

    .line 574
    if-eqz p1, :cond_2

    .line 575
    invoke-direct {p0}, Lcom/alipay/android/phone/messageboxapp/ui/h;->i()V

    .line 576
    iput v1, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->o:I

    .line 577
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->s:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    .line 579
    iput-boolean v1, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->f:Z

    .line 580
    invoke-virtual {p0}, Lcom/alipay/android/phone/messageboxapp/ui/h;->a()V

    .line 581
    invoke-direct {p0}, Lcom/alipay/android/phone/messageboxapp/ui/h;->g()V

    .line 585
    :goto_1
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->p:Lcom/alipay/android/phone/messageboxapp/ui/f;

    invoke-virtual {v0, p1}, Lcom/alipay/android/phone/messageboxapp/ui/f;->a(Z)V

    .line 586
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->p:Lcom/alipay/android/phone/messageboxapp/ui/f;

    iget-object v1, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->u:Ljava/util/List;

    iget-object v2, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->v:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/phone/messageboxapp/ui/f;->a(Ljava/util/List;Ljava/util/List;)V

    .line 587
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->p:Lcom/alipay/android/phone/messageboxapp/ui/f;

    invoke-virtual {v0}, Lcom/alipay/android/phone/messageboxapp/ui/f;->notifyDataSetChanged()V

    goto :goto_0

    .line 583
    :cond_2
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->s:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method final b()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 122
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->v:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 125
    iget-boolean v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->f:Z

    if-eqz v0, :cond_1

    .line 126
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->o:I

    .line 130
    :goto_1
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->p:Lcom/alipay/android/phone/messageboxapp/ui/f;

    iget-object v1, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->u:Ljava/util/List;

    iget-object v2, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->v:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/phone/messageboxapp/ui/f;->a(Ljava/util/List;Ljava/util/List;)V

    .line 131
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->p:Lcom/alipay/android/phone/messageboxapp/ui/f;

    invoke-virtual {v0}, Lcom/alipay/android/phone/messageboxapp/ui/f;->notifyDataSetChanged()V

    .line 132
    return-void

    .line 123
    :cond_0
    iget-object v2, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->v:Ljava/util/List;

    iget-boolean v3, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->f:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 122
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 128
    :cond_1
    iput v1, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->o:I

    goto :goto_1
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 481
    iget-boolean v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->r:Z

    if-eqz v0, :cond_0

    .line 543
    :goto_0
    return-void

    .line 484
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->r:Z

    .line 487
    new-instance v0, Lcom/alipay/android/phone/messageboxapp/ui/n;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/messageboxapp/ui/n;-><init>(Lcom/alipay/android/phone/messageboxapp/ui/h;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected final d()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 591
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->j:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    if-nez v0, :cond_0

    .line 592
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->i:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/alipay/android/phone/messageboxapp/R$id;->empty_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    iput-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->j:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    .line 596
    :goto_0
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->a:Lcom/alipay/mobile/commonui/widget/APListView;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APListView;->setVisibility(I)V

    .line 597
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->s:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    .line 599
    return-void

    .line 594
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->j:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->setVisibility(I)V

    goto :goto_0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 620
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->u:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 336
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 337
    invoke-virtual {p0}, Lcom/alipay/android/phone/messageboxapp/ui/h;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;

    iput-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->k:Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;

    .line 339
    new-instance v0, Lcom/alipay/mmmbbbxxx/b/b;

    invoke-direct {v0}, Lcom/alipay/mmmbbbxxx/b/b;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->x:Lcom/alipay/mmmbbbxxx/b/a;

    .line 340
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->q:Lcom/alipay/android/phone/messageboxstatic/api/FriendstabAccessService;

    .line 341
    invoke-static {}, Lcom/alipay/mmmbbbxxx/a/a;->a()Lcom/alipay/android/phone/messageboxstatic/api/MsgboxInfoService;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->w:Lcom/alipay/android/phone/messageboxstatic/api/MsgboxInfoService;

    .line 342
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    if-nez v0, :cond_2

    :goto_1
    iput-object v1, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->y:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    .line 343
    invoke-virtual {p0}, Lcom/alipay/android/phone/messageboxapp/ui/h;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 344
    if-eqz v0, :cond_0

    .line 345
    const-string/jumbo v1, "date"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->u:Ljava/util/List;

    .line 346
    const-string/jumbo v1, "msgType"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->t:Ljava/lang/String;

    .line 349
    :cond_0
    return-void

    .line 340
    :cond_1
    const-class v2, Lcom/alipay/android/phone/messageboxstatic/api/FriendstabAccessService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/messageboxstatic/api/FriendstabAccessService;

    goto :goto_0

    .line 342
    :cond_2
    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    move-object v1, v0

    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 367
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 368
    sget v0, Lcom/alipay/android/phone/messageboxapp/R$layout;->list_fragment:I

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->m:Landroid/view/View;

    .line 369
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->m:Landroid/view/View;

    sget v1, Lcom/alipay/android/phone/messageboxapp/R$id;->empty_view_stub:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->i:Landroid/view/ViewStub;

    .line 370
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->m:Landroid/view/View;

    sget v1, Lcom/alipay/android/phone/messageboxapp/R$id;->list_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APListView;

    iput-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->a:Lcom/alipay/mobile/commonui/widget/APListView;

    .line 371
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->m:Landroid/view/View;

    sget v1, Lcom/alipay/android/phone/messageboxapp/R$id;->layout_delete:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    iput-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->s:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    .line 372
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->m:Landroid/view/View;

    sget v1, Lcom/alipay/android/phone/messageboxapp/R$id;->iv_delete_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->b:Lcom/alipay/mobile/commonui/widget/APImageView;

    .line 373
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->m:Landroid/view/View;

    sget v1, Lcom/alipay/android/phone/messageboxapp/R$id;->iv_check_all:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->e:Lcom/alipay/mobile/commonui/widget/APImageView;

    .line 375
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->m:Landroid/view/View;

    sget v1, Lcom/alipay/android/phone/messageboxapp/R$id;->tv_check_all:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->c:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 376
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->m:Landroid/view/View;

    sget v1, Lcom/alipay/android/phone/messageboxapp/R$id;->layout_check_all:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    iput-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->d:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    .line 377
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->d:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    iget-object v1, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->g:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 380
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->u:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 381
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/android/phone/messageboxapp/ui/h;->d()V

    .line 382
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->m:Landroid/view/View;

    .line 395
    :goto_0
    return-object v0

    .line 384
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->a:Lcom/alipay/mobile/commonui/widget/APListView;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APListView;->setVisibility(I)V

    .line 385
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->a:Lcom/alipay/mobile/commonui/widget/APListView;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 386
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->b:Lcom/alipay/mobile/commonui/widget/APImageView;

    iget-object v1, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->h:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 387
    invoke-direct {p0}, Lcom/alipay/android/phone/messageboxapp/ui/h;->g()V

    .line 388
    new-instance v0, Lcom/alipay/android/phone/messageboxapp/ui/f;

    iget-object v1, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->k:Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;

    iget-object v2, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->t:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/phone/messageboxapp/ui/f;-><init>(Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->p:Lcom/alipay/android/phone/messageboxapp/ui/f;

    .line 390
    invoke-direct {p0}, Lcom/alipay/android/phone/messageboxapp/ui/h;->i()V

    .line 391
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->p:Lcom/alipay/android/phone/messageboxapp/ui/f;

    iget-object v1, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->u:Ljava/util/List;

    iget-object v2, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->v:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/phone/messageboxapp/ui/f;->a(Ljava/util/List;Ljava/util/List;)V

    .line 392
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->a:Lcom/alipay/mobile/commonui/widget/APListView;

    iget-object v1, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->p:Lcom/alipay/android/phone/messageboxapp/ui/f;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 394
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->a:Lcom/alipay/mobile/commonui/widget/APListView;

    iget-object v1, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->p:Lcom/alipay/android/phone/messageboxapp/ui/f;

    invoke-virtual {v1}, Lcom/alipay/android/phone/messageboxapp/ui/f;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APListView;->setSelection(I)V

    .line 395
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->m:Landroid/view/View;

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 405
    iget-boolean v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->n:Z

    if-eqz v0, :cond_6

    .line 407
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    .line 408
    sget-object v3, Lcom/alipay/android/phone/messageboxapp/ui/h;->l:Ljava/lang/String;

    .line 409
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "onItemClick begin : position = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " , isEditMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->n:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 410
    const-string/jumbo v5, " , dataSelected.get(position) = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->v:Ljava/util/List;

    invoke-interface {v5, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 411
    const-string/jumbo v5, " , itemSelectedCount = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 412
    iget v5, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->o:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 409
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 407
    invoke-interface {v0, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->v:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 416
    iget v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->o:I

    iget-object v3, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->v:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v0, v3, :cond_0

    .line 417
    iput-boolean v1, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->f:Z

    .line 418
    invoke-virtual {p0}, Lcom/alipay/android/phone/messageboxapp/ui/h;->a()V

    .line 420
    :cond_0
    iget v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->o:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->o:I

    .line 422
    invoke-direct {p0}, Lcom/alipay/android/phone/messageboxapp/ui/h;->g()V

    .line 424
    iget-object v3, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->v:Ljava/util/List;

    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->v:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v3, p3, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 425
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->p:Lcom/alipay/android/phone/messageboxapp/ui/f;

    iget-object v1, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->u:Ljava/util/List;

    iget-object v2, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->v:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/phone/messageboxapp/ui/f;->a(Ljava/util/List;Ljava/util/List;)V

    .line 426
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->p:Lcom/alipay/android/phone/messageboxapp/ui/f;

    invoke-virtual {v0}, Lcom/alipay/android/phone/messageboxapp/ui/f;->notifyDataSetChanged()V

    .line 474
    :goto_1
    return-void

    :cond_1
    move v0, v2

    .line 424
    goto :goto_0

    .line 429
    :cond_2
    iget v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->o:I

    const/16 v3, 0xc7

    if-le v0, v3, :cond_3

    .line 430
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->k:Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;

    sget v2, Lcom/alipay/android/phone/messageboxapp/R$string;->max_select_toast:I

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/common/widget/SimpleToast;->makeToast(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 433
    :cond_3
    iget v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->o:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->o:I

    .line 434
    invoke-direct {p0}, Lcom/alipay/android/phone/messageboxapp/ui/h;->g()V

    .line 436
    iget v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->o:I

    iget-object v3, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->v:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v0, v3, :cond_4

    .line 437
    iput-boolean v2, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->f:Z

    .line 438
    invoke-virtual {p0}, Lcom/alipay/android/phone/messageboxapp/ui/h;->a()V

    .line 441
    :cond_4
    iget-object v3, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->v:Ljava/util/List;

    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->v:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v3, p3, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 442
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->p:Lcom/alipay/android/phone/messageboxapp/ui/f;

    iget-object v1, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->u:Ljava/util/List;

    iget-object v2, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->v:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/phone/messageboxapp/ui/f;->a(Ljava/util/List;Ljava/util/List;)V

    .line 443
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->p:Lcom/alipay/android/phone/messageboxapp/ui/f;

    invoke-virtual {v0}, Lcom/alipay/android/phone/messageboxapp/ui/f;->notifyDataSetChanged()V

    goto :goto_1

    :cond_5
    move v1, v2

    .line 441
    goto :goto_2

    .line 448
    :cond_6
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    .line 449
    sget-object v1, Lcom/alipay/android/phone/messageboxapp/ui/h;->l:Ljava/lang/String;

    .line 450
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onItemClick begin : position = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " , isEditMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->n:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 451
    const-string/jumbo v3, " , dataSelected.get(position) = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->v:Ljava/util/List;

    invoke-interface {v3, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 452
    const-string/jumbo v3, " , itemSelectedCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 453
    iget v3, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->o:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 450
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 448
    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->u:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/messageboxstatic/api/model/MessageInfo;

    iget-object v0, v0, Lcom/alipay/android/phone/messageboxstatic/api/model/MessageInfo;->action:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mmmbbbxxx/c/b;->a(Ljava/lang/String;)V

    .line 457
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/messageboxapp/ui/h;->l:Ljava/lang/String;

    const-string/jumbo v2, "onItemClic after actionUrl"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->t:Ljava/lang/String;

    const-string/jumbo v1, "TODO"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 461
    new-instance v0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;

    const-string/jumbo v1, "UC-MSG-150522-02"

    invoke-direct {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "msgtab"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;->setSeedID(Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;

    move-result-object v0

    const-string/jumbo v1, "db"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;->setParam1(Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;

    move-result-object v1

    .line 462
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "link="

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->u:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/messageboxstatic/api/model/MessageInfo;

    iget-object v0, v0, Lcom/alipay/android/phone/messageboxstatic/api/model/MessageInfo;->action:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;->setParam2(Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;->build()Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    move-result-object v0

    .line 468
    :goto_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getBehavorLogger()Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;->click(Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 469
    :catch_0
    move-exception v0

    .line 470
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/android/phone/messageboxapp/ui/h;->l:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 465
    :cond_7
    :try_start_1
    new-instance v0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;

    const-string/jumbo v1, "UC-MSG-150522-02"

    invoke-direct {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "msgtab"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;->setSeedID(Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;

    move-result-object v0

    const-string/jumbo v1, "tz"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;->setParam1(Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;

    move-result-object v1

    .line 466
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "link="

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->u:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/messageboxstatic/api/model/MessageInfo;

    iget-object v0, v0, Lcom/alipay/android/phone/messageboxstatic/api/model/MessageInfo;->action:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;->setParam2(Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;->build()Lcom/alipay/mobile/common/logging/api/behavor/Behavor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_3
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 353
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 356
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/h;->t:Ljava/lang/String;

    const-string/jumbo v1, "TODO"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 357
    new-instance v0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;

    const-string/jumbo v1, "UC-MSG-150522-01"

    invoke-direct {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "msgindex"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;->setSeedID(Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;

    move-result-object v0

    const-string/jumbo v1, "db"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;->setParam1(Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;->build()Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    move-result-object v0

    .line 362
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getBehavorLogger()Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;->openPage(Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V

    .line 363
    return-void

    .line 360
    :cond_0
    new-instance v0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;

    const-string/jumbo v1, "UC-MSG-150522-01"

    invoke-direct {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "msgindex"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;->setSeedID(Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;

    move-result-object v0

    const-string/jumbo v1, "tz"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;->setParam1(Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;->build()Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    move-result-object v0

    goto :goto_0
.end method
