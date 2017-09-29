.class public Lcom/alipay/mobile/personalbase/model/MobileRecordAccount;
.super Ljava/lang/Object;
.source "MobileRecordAccount.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/j256/ormlite/table/DatabaseTable;
    daoClass = Lcom/alipay/mobile/personalbase/db/MobileRecordDatabaseDaoImpl;
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x135504977856fbd2L


# instance fields
.field public account:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public activeAccount:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public friendStatus:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public headImageUrl:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public matchedAccounts:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public mobileFirstChar:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public mobileId:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "_id"
        id = true
    .end annotation
.end field

.field public mobilePinyinStr:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        index = true
    .end annotation
.end field

.field public name:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public nickName:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public orderNum:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        index = true
    .end annotation
.end field

.field public phoneName:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public phoneNo:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        index = true
    .end annotation
.end field

.field public remarkName:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public searchPhoneName:Ljava/lang/String;

.field public searchPhoneNo:Ljava/lang/String;

.field public showAsActive:Z
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public showAsMobile:Z
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public initMobilePinyin(Lcom/alipay/mobile/personalbase/service/PinyinSearchService;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 108
    iget-object v0, p0, Lcom/alipay/mobile/personalbase/model/MobileRecordAccount;->mobileFirstChar:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/personalbase/model/MobileRecordAccount;->mobilePinyinStr:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 140
    :goto_0
    return-void

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/personalbase/model/MobileRecordAccount;->phoneName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    const-string/jumbo v0, "|"

    iput-object v0, p0, Lcom/alipay/mobile/personalbase/model/MobileRecordAccount;->mobilePinyinStr:Ljava/lang/String;

    .line 113
    const-string/jumbo v0, "#"

    iput-object v0, p0, Lcom/alipay/mobile/personalbase/model/MobileRecordAccount;->mobileFirstChar:Ljava/lang/String;

    goto :goto_0

    .line 116
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v1

    .line 117
    :goto_1
    iget-object v3, p0, Lcom/alipay/mobile/personalbase/model/MobileRecordAccount;->phoneName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v0, v3, :cond_2

    .line 139
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/personalbase/model/MobileRecordAccount;->mobilePinyinStr:Ljava/lang/String;

    goto :goto_0

    .line 118
    :cond_2
    iget-object v3, p0, Lcom/alipay/mobile/personalbase/model/MobileRecordAccount;->phoneName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 119
    invoke-virtual {p1, v3}, Lcom/alipay/mobile/personalbase/service/PinyinSearchService;->getPinyinStringArray(C)[Ljava/lang/String;

    move-result-object v4

    .line 120
    if-nez v4, :cond_6

    .line 121
    if-nez v0, :cond_5

    .line 122
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alipay/mobile/personalbase/model/MobileRecordAccount;->mobileFirstChar:Ljava/lang/String;

    .line 123
    iget-object v3, p0, Lcom/alipay/mobile/personalbase/model/MobileRecordAccount;->mobileFirstChar:Ljava/lang/String;

    const-string/jumbo v4, "^[a-zA-Z].*$"

    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 124
    const-string/jumbo v3, "#"

    iput-object v3, p0, Lcom/alipay/mobile/personalbase/model/MobileRecordAccount;->mobileFirstChar:Ljava/lang/String;

    .line 125
    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 127
    :cond_4
    iget-object v3, p0, Lcom/alipay/mobile/personalbase/model/MobileRecordAccount;->mobileFirstChar:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 130
    :cond_5
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 133
    :cond_6
    aget-object v3, v4, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    if-nez v0, :cond_3

    .line 135
    new-instance v3, Ljava/lang/StringBuilder;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alipay/mobile/personalbase/model/MobileRecordAccount;->mobileFirstChar:Ljava/lang/String;

    goto :goto_2
.end method
