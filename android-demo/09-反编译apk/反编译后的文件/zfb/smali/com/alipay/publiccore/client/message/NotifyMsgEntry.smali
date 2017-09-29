.class public Lcom/alipay/publiccore/client/message/NotifyMsgEntry;
.super Lcom/alipay/publiccore/client/message/BaseMsgEntry;
.source "NotifyMsgEntry.java"


# static fields
.field private static final serialVersionUID:J = 0x4c049aaf72b07524L


# instance fields
.field public actionName:Ljava/lang/String;

.field public actionParam:Ljava/lang/String;

.field public actionType:Ljava/lang/String;

.field public amount:Ljava/lang/String;

.field public amountAlignType:Ljava/lang/String;

.field public amountFontSize:Ljava/lang/String;

.field public amountNum:Ljava/lang/String;

.field public amountNumAlignType:Ljava/lang/String;

.field public amountNumAutoSize:Ljava/lang/String;

.field public amountNumFontColor:Ljava/lang/String;

.field public amountNumFontSize:Ljava/lang/String;

.field public amountText:Ljava/lang/String;

.field public amountTextAlignType:Ljava/lang/String;

.field public amountTextFontSize:Ljava/lang/String;

.field public appId:Ljava/lang/String;

.field public createTime:Ljava/lang/String;

.field public extraText:Ljava/lang/String;

.field public extraTextAlignType:Ljava/lang/String;

.field public extraTextFontColor:Ljava/lang/String;

.field public extraTextFontSize:Ljava/lang/String;

.field public headBtn:Ljava/lang/String;

.field public headBtnActionType:Ljava/lang/String;

.field public headBtnUrl:Ljava/lang/String;

.field public headLogo:Ljava/lang/String;

.field public headTitle:Ljava/lang/String;

.field public isShowAmountDevider:Ljava/lang/String;

.field public publicId:Ljava/lang/String;

.field public text:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public toUserId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 18
    invoke-direct {p0}, Lcom/alipay/publiccore/client/message/BaseMsgEntry;-><init>()V

    .line 25
    iput-object v1, p0, Lcom/alipay/publiccore/client/message/NotifyMsgEntry;->headLogo:Ljava/lang/String;

    .line 30
    iput-object v1, p0, Lcom/alipay/publiccore/client/message/NotifyMsgEntry;->headTitle:Ljava/lang/String;

    .line 35
    iput-object v1, p0, Lcom/alipay/publiccore/client/message/NotifyMsgEntry;->headBtn:Ljava/lang/String;

    .line 38
    iput-object v1, p0, Lcom/alipay/publiccore/client/message/NotifyMsgEntry;->headBtnActionType:Ljava/lang/String;

    .line 43
    iput-object v1, p0, Lcom/alipay/publiccore/client/message/NotifyMsgEntry;->headBtnUrl:Ljava/lang/String;

    .line 48
    iput-object v1, p0, Lcom/alipay/publiccore/client/message/NotifyMsgEntry;->title:Ljava/lang/String;

    .line 53
    iput-object v1, p0, Lcom/alipay/publiccore/client/message/NotifyMsgEntry;->amount:Ljava/lang/String;

    .line 55
    iput-object v1, p0, Lcom/alipay/publiccore/client/message/NotifyMsgEntry;->amountFontSize:Ljava/lang/String;

    .line 57
    iput-object v1, p0, Lcom/alipay/publiccore/client/message/NotifyMsgEntry;->amountAlignType:Ljava/lang/String;

    .line 62
    iput-object v1, p0, Lcom/alipay/publiccore/client/message/NotifyMsgEntry;->amountNum:Ljava/lang/String;

    .line 64
    iput-object v1, p0, Lcom/alipay/publiccore/client/message/NotifyMsgEntry;->amountNumFontSize:Ljava/lang/String;

    .line 66
    iput-object v1, p0, Lcom/alipay/publiccore/client/message/NotifyMsgEntry;->amountNumFontColor:Ljava/lang/String;

    .line 68
    iput-object v1, p0, Lcom/alipay/publiccore/client/message/NotifyMsgEntry;->amountNumAlignType:Ljava/lang/String;

    .line 70
    iput-object v1, p0, Lcom/alipay/publiccore/client/message/NotifyMsgEntry;->amountNumAutoSize:Ljava/lang/String;

    .line 75
    iput-object v1, p0, Lcom/alipay/publiccore/client/message/NotifyMsgEntry;->amountText:Ljava/lang/String;

    .line 77
    iput-object v1, p0, Lcom/alipay/publiccore/client/message/NotifyMsgEntry;->amountTextFontSize:Ljava/lang/String;

    .line 79
    iput-object v1, p0, Lcom/alipay/publiccore/client/message/NotifyMsgEntry;->amountTextAlignType:Ljava/lang/String;

    .line 84
    iput-object v1, p0, Lcom/alipay/publiccore/client/message/NotifyMsgEntry;->isShowAmountDevider:Ljava/lang/String;

    .line 89
    iput-object v1, p0, Lcom/alipay/publiccore/client/message/NotifyMsgEntry;->text:Ljava/lang/String;

    .line 94
    sget v0, Lcom/alipay/mobile/publicsvc/common/R$string;->go_detail:I

    invoke-static {v0}, Lcom/alipay/android/phone/publicplatform/common/api/ContextUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/publiccore/client/message/NotifyMsgEntry;->actionName:Ljava/lang/String;

    .line 99
    iput-object v1, p0, Lcom/alipay/publiccore/client/message/NotifyMsgEntry;->actionType:Ljava/lang/String;

    .line 104
    iput-object v1, p0, Lcom/alipay/publiccore/client/message/NotifyMsgEntry;->actionParam:Ljava/lang/String;

    .line 121
    iput-object v1, p0, Lcom/alipay/publiccore/client/message/NotifyMsgEntry;->publicId:Ljava/lang/String;

    .line 126
    iput-object v1, p0, Lcom/alipay/publiccore/client/message/NotifyMsgEntry;->toUserId:Ljava/lang/String;

    .line 131
    iput-object v1, p0, Lcom/alipay/publiccore/client/message/NotifyMsgEntry;->createTime:Ljava/lang/String;

    .line 18
    return-void
.end method
