.class public Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;
.super Lcom/alipay/mobile/security/gesture/GestureConfig;


# instance fields
.field private a:Z

.field private b:Lcom/alipay/mobile/security/gesture/data/UserGesture;

.field private c:Lcom/alipay/mobile/security/gesture/service/f;

.field private d:Lcom/alipay/mobile/security/gesture/data/UserGestureData;

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/security/gesture/GestureConfig;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;->a:Z

    const-string/jumbo v0, "GestureConfigImpl"

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;->e:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/security/gesture/data/GestureAppearModeBaseData;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "getModeCfg begin userID "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " modeName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;->l(Ljava/lang/String;)V

    const-string/jumbo v0, "getUserGestureData before 0"

    invoke-static {v0}, Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;->l(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;->b:Lcom/alipay/mobile/security/gesture/data/UserGesture;

    if-nez v0, :cond_0

    const-string/jumbo v0, "ug is null"

    invoke-static {v0}, Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;->l(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;->a()V

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;->b:Lcom/alipay/mobile/security/gesture/data/UserGesture;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/security/gesture/data/UserGesture;->getUserGestureData(Ljava/lang/String;)Lcom/alipay/mobile/security/gesture/data/UserGestureData;

    move-result-object v0

    const-string/jumbo v1, "getUserGestureData before 1"

    invoke-static {v1}, Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;->l(Ljava/lang/String;)V

    if-nez v0, :cond_1

    const-string/jumbo v0, "getUserGestureData before 2"

    invoke-static {v0}, Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;->l(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;->a(Ljava/lang/String;)Lcom/alipay/mobile/security/gesture/data/UserGestureData;

    move-result-object v0

    :cond_1
    const-string/jumbo v1, "getUserGestureData before 3"

    invoke-static {v1}, Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;->l(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/alipay/mobile/security/gesture/data/UserGestureData;->getMode(Ljava/lang/String;)Lcom/alipay/mobile/security/gesture/data/GestureAppearModeBaseData;

    move-result-object v0

    const-string/jumbo v1, "getUserGestureData before 4"

    invoke-static {v1}, Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;->l(Ljava/lang/String;)V

    if-nez v0, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mode is null "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;->l(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "getModeCfg end mode name"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/alipay/mobile/security/gesture/data/GestureAppearModeBaseData;->modeName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;->l(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)Lcom/alipay/mobile/security/gesture/data/UserGestureData;
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "addUserGestrueConfig begin userID "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;->l(Ljava/lang/String;)V

    new-instance v1, Lcom/alipay/mobile/security/gesture/data/UserGestureData;

    invoke-direct {v1}, Lcom/alipay/mobile/security/gesture/data/UserGestureData;-><init>()V

    const-string/jumbo v0, "addUserGestrueConfig 1 "

    invoke-static {v0}, Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;->b:Lcom/alipay/mobile/security/gesture/data/UserGesture;

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;->a()V

    :cond_0
    iget-object v2, p0, Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;->b:Lcom/alipay/mobile/security/gesture/data/UserGesture;

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;->b:Lcom/alipay/mobile/security/gesture/data/UserGesture;

    sget-object v2, Lcom/alipay/mobile/security/gesture/service/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/security/gesture/data/UserGesture;->getUserGestureData(Ljava/lang/String;)Lcom/alipay/mobile/security/gesture/data/UserGestureData;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    invoke-static {}, Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;->genDefault()Lcom/alipay/mobile/security/gesture/data/UserGestureData;

    move-result-object v0

    :cond_2
    const-string/jumbo v2, "addUserGestrueConfig 2 "

    invoke-static {v2}, Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;->l(Ljava/lang/String;)V

    iput-object p1, v1, Lcom/alipay/mobile/security/gesture/data/UserGestureData;->userId:Ljava/lang/String;

    const-string/jumbo v2, "addUserGestrueConfig 3 "

    invoke-static {v2}, Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;->l(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/alipay/mobile/security/gesture/data/UserGestureData;->modeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Lcom/alipay/mobile/security/gesture/data/GestureConfigHelper;->getInstance()Lcom/alipay/mobile/security/gesture/data/GestureConfigHelper;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/gesture/data/GestureConfigHelper;->addOrUpdate(Lcom/alipay/mobile/security/gesture/data/UserGestureData;)Z

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;->b:Lcom/alipay/mobile/security/gesture/data/UserGesture;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;->b:Lcom/alipay/mobile/security/gesture/data/UserGesture;

    iget-object v0, v0, Lcom/alipay/mobile/security/gesture/data/UserGesture;->userGestureList:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;->b:Lcom/alipay/mobile/security/gesture/data/UserGesture;

    iget-object v0, v0, Lcom/alipay/mobile/security/gesture/data/UserGesture;->userGestureList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    return-object v1

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/security/gesture/data/GestureAppearModeBaseData;

    const-string/jumbo v3, "addUserGestrueConfig 4 "

    invoke-static {v3}, Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;->l(Ljava/lang/String;)V

    if-eqz v0, :cond_3

    new-instance v3, Lcom/alipay/mobile/security/gesture/data/GestureAppearModeBaseData;

    invoke-direct {v3}, Lcom/alipay/mobile/security/gesture/data/GestureAppearModeBaseData;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "addUserGestrueConfig 5 gamb.modeName:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/alipay/mobile/security/gesture/data/GestureAppearModeBaseData;->modeName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;->l(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/alipay/mobile/security/gesture/data/GestureAppearModeBaseData;->modeName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, v0, Lcom/alipay/mobile/security/gesture/data/GestureAppearModeBaseData;->modeName:Ljava/lang/String;

    const-string/jumbo v5, "normalStage2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    :cond_6
    iget-object v4, v0, Lcom/alipay/mobile/security/gesture/data/GestureAppearModeBaseData;->modeName:Ljava/lang/String;

    iput-object v4, v3, Lcom/alipay/mobile/security/gesture/data/GestureAppearModeBaseData;->modeName:Ljava/lang/String;

    const-string/jumbo v4, "addUserGestrueConfig 6 "

    invoke-static {v4}, Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;->l(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/alipay/mobile/security/gesture/data/GestureAppearModeBaseData;->configItem:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, v1, Lcom/alipay/mobile/security/gesture/data/UserGestureData;->modeList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_8
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;

    const-string/jumbo v5, "addUserGestrueConfig 7 "

    invoke-static {v5}, Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;->l(Ljava/lang/String;)V

    if-eqz v0, :cond_7

    new-instance v5, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;

    invoke-direct {v5}, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;-><init>()V

    const-string/jumbo v6, "addUserGestrueConfig 8 "

    invoke-static {v6}, Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;->l(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;->name:Ljava/lang/String;

    iput-object v6, v5, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;->name:Ljava/lang/String;

    const-string/jumbo v6, "addUserGestrueConfig 9 "

    invoke-static {v6}, Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;->l(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;->view:Ljava/lang/String;

    iput-object v6, v5, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;->view:Ljava/lang/String;

    const-string/jumbo v6, "addUserGestrueConfig 10 "

    invoke-static {v6}, Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;->l(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;->url:Ljava/lang/String;

    iput-object v6, v5, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;->url:Ljava/lang/String;

    const-string/jumbo v6, "addUserGestrueConfig 11 "

    invoke-static {v6}, Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;->l(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;->appId:Ljava/lang/String;

    iput-object v6, v5, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;->appId:Ljava/lang/String;

    const-string/jumbo v6, "addUserGestrueConfig 12 "

    invoke-static {v6}, Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;->l(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;->on:Ljava/lang/Integer;

    if-nez v6, :cond_9

    const/4 v0, 0x0

    :goto_2
    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v0}, Ljava/lang/Integer;-><init>(I)V

    iput-object v6, v5, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;->on:Ljava/lang/Integer;

    const-string/jumbo v0, "addUserGestrueConfig 13 "

    invoke-static {v0}, Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;->l(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/alipay/mobile/security/gesture/data/GestureAppearModeBaseData;->configItem:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_9
    iget-object v0, v0, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;->on:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_2
.end method

.method private a()V
    .locals 2

    const-string/jumbo v0, " ug is null no dbData"

    invoke-static {v0}, Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;->l(Ljava/lang/String;)V

    new-instance v0, Lcom/alipay/mobile/security/gesture/data/UserGesture;

    invoke-direct {v0}, Lcom/alipay/mobile/security/gesture/data/UserGesture;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;->b:Lcom/alipay/mobile/security/gesture/data/UserGesture;

    invoke-static {}, Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;->genDefault()Lcom/alipay/mobile/security/gesture/data/UserGestureData;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;->d:Lcom/alipay/mobile/security/gesture/data/UserGestureData;

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;->b:Lcom/alipay/mobile/security/gesture/data/UserGesture;

    iget-object v0, v0, Lcom/alipay/mobile/security/gesture/data/UserGesture;->userGestureList:Ljava/util/List;

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;->d:Lcom/alipay/mobile/security/gesture/data/UserGestureData;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic access$0(Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;Lcom/alipay/mobile/security/gesture/data/UserGesture;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;->b:Lcom/alipay/mobile/security/gesture/data/UserGesture;

    return-void
.end method

.method public static genDefault()Lcom/alipay/mobile/security/gesture/data/UserGestureData;
    .locals 4

    const-string/jumbo v0, "see before de"

    invoke-static {v0}, Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;->l(Ljava/lang/String;)V

    const-string/jumbo v0, "gfoYjzfnHZGjipHQMAbQlA=="

    const-string/jumbo v1, "ci7F1/M2FryXNR/XyQuy8djWFu+/AJHoG8PpnvyhfbB5fmtqTLT2VsStYe/o/N2DtkfWm1JW5TbE\n9y/2LKS/rDwkmJ7CmCHIUk8jpnqlSuMIBr5zMdWDq2yp3wU6zzQ2cwoEqXNZKS/2LI5TCBOYeymb\nk9DnQij07fVzB70kfrVt26shwUsQvyORqAzi8u3LD986KuHTgg/joa9OPjYKuAv4EqSXkVYpKGoC\npQV9ntXjO1uM+kIP0rZH1ptSVuU2DbY3y1ONdlJKF4Fh5d96c5xPNuBQvSF2bZs8zBE+xdTdMOQO\n9pAGhPmmiMEPgkWKRF/PZoPm9EzQw6pjWcnzLObTr14Lb/iOyvigXykw2FOH3b5xrEmvZbUJPa8W\n9wtpcE3XYdqcYHq/BZka3JVAKlSrgDWE1Zu4o+jTbYPZitnREz5fLgAwnAbUICwbSG8ZKL/nx2M/\nEWNo1CcNS7pmRYtTaZH+LmA4wNFiR95hZtZDO1ufQ+Cp4Ude8h5Vj6XQAiuEEn0ca8hTo07K0RCW\n2M+MvAvOYx2AgW7e5BehF/UulWW6qToy8sm/v/JTWxWhg+x4ExhL/uXpNdg7mkIn9vxfO/N/w3r2\nQcqTgerzykwta+ujmmIF+vQFk46wJzLzVQIaPdl/qfHKCkaHI416TXl+a2pMtPZWWMIUD0SfGXLc\nCnpClJLT+4YNfmB7R6cZznMNPKg5VLt8mVtQ9iPB1csPnP64kP3XpmMt6ou4poMnaExNMEHf8EeT\nyzzn+4zp03bNKL19QWGF+AEfYSs+AYZ/cuaoTlc9D5UQp3YqaD1FflDZVn7AHYPT+YvL6nWINNzy\nJa4dcY11IQDGha8CeObTr14Lb/iOyvigXykw2FMOBRw1cI/HkqEikcO0pqghpmMt6ou4poMnaExN\nMEHf8EeTyzzn+4zp03bNKL19QWFxEEi4LG1x0gzadRlCKHnZ9K905Ox6xD4+xV8FEQcREHl+a2pM\ntPZWTdfUYY8jbcv75heXuRCCpsMw2ZX4r4GP0gGJvCCNs2KD0/mLy+p1iFhSjQHRPioW52pBdlpI\nYpcIBr5zMdWDq2GgKohS2Pv8zeOpVG2GnBWpRc0Dq0WyyGjA3QQIox11jkKs2FTmalw3B4YimwrL\nXaZjLeqLuKaDCs2v1Ev9mwCJIMrutJn7fO31cwe9JH61W5H0YICwZu1NF1BV3TRnWURSfFKonvYK\np5qcHG8lUEn/9W22h1vXWfEG9FF1vLwf0uifbb7utewq/JMmlaW7RQ==\n"

    new-instance v2, Lcom/alipay/mobile/security/gesture/GestureConfigDBItem;

    invoke-direct {v2}, Lcom/alipay/mobile/security/gesture/GestureConfigDBItem;-><init>()V

    const-string/jumbo v3, "userInfo"

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/security/Des;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/security/gesture/GestureConfigDBItem;->setUdrtif(Ljava/lang/String;)V

    const-string/jumbo v0, "userInfo"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/security/Des;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/security/gesture/GestureConfigDBItem;->setData(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "see de id"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/alipay/mobile/security/gesture/GestureConfigDBItem;->getUdrtif()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;->l(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "see de data"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/alipay/mobile/security/gesture/GestureConfigDBItem;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;->l(Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v2}, Lcom/alipay/mobile/security/gesture/GestureConfigDBItem;->getData()Ljava/lang/String;

    move-result-object v0

    const-class v2, Lcom/alipay/mobile/security/gesture/data/UserGestureData;

    invoke-static {v0, v2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/security/gesture/data/UserGestureData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "see genDefault de:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;->l(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_1
    const-string/jumbo v1, "json parse err"

    invoke-static {v1}, Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;->l(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method static l(Ljava/lang/String;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public downloadCfg(ZLcom/alipay/mobile/security/gesture/service/f;)V
    .locals 2

    const-string/jumbo v0, "start downloadCfg"

    invoke-static {v0}, Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;->l(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    const/4 v0, 0x2

    invoke-interface {p2, v0}, Lcom/alipay/mobile/security/gesture/service/f;->a(I)V

    :cond_2
    const-string/jumbo v0, "start downloadCfg 1"

    invoke-static {v0}, Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;->l(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/security/gesture/service/c;->a()Lcom/alipay/mobile/security/gesture/service/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/security/gesture/service/c;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "start downloadCfg 2"

    invoke-static {v0}, Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;->l(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Lcom/alipay/mobile/security/gesture/service/f;->a(I)V

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "start downloadCfg 3"

    invoke-static {v0}, Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;->l(Ljava/lang/String;)V

    if-eqz p2, :cond_4

    invoke-static {}, Lcom/alipay/mobile/security/gesture/service/c;->a()Lcom/alipay/mobile/security/gesture/service/c;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/alipay/mobile/security/gesture/service/c;->b(Lcom/alipay/mobile/security/gesture/service/f;)V

    :cond_4
    invoke-static {}, Lcom/alipay/mobile/security/gesture/service/c;->a()Lcom/alipay/mobile/security/gesture/service/c;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/security/gesture/service/d;

    invoke-direct {v1, v0}, Lcom/alipay/mobile/security/gesture/service/d;-><init>(Lcom/alipay/mobile/security/gesture/service/c;)V

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public getBlackListAppNames(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;->getBlackMode(Ljava/lang/String;)Lcom/alipay/mobile/security/gesture/data/ConvenientMode;

    move-result-object v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "isInBlackList cm is null"

    invoke-static {v1}, Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;->l(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "-"

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/security/gesture/data/ConvenientMode;->getAllOnNames(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "getBlackListAppNames userID"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " rtn:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;->l(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getBlackMode(Ljava/lang/String;)Lcom/alipay/mobile/security/gesture/data/ConvenientMode;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "getBlackMode data userID:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;->l(Ljava/lang/String;)V

    sget-object v0, Lcom/alipay/mobile/security/gesture/service/c;->a:Ljava/lang/String;

    const-string/jumbo v1, "fastStage2"

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/security/gesture/data/GestureAppearModeBaseData;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "getBlackMode data is null"

    invoke-static {v0}, Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/alipay/mobile/security/gesture/data/ConvenientMode;->convertToMe(Lcom/alipay/mobile/security/gesture/data/GestureAppearModeBaseData;)Lcom/alipay/mobile/security/gesture/data/ConvenientMode;

    move-result-object v0

    goto :goto_0
.end method

.method public getWhiteMode(Ljava/lang/String;)Lcom/alipay/mobile/security/gesture/data/NormalMode;
    .locals 1

    const-string/jumbo v0, "normalStage2"

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/security/gesture/data/GestureAppearModeBaseData;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/alipay/mobile/security/gesture/data/NormalMode;->convertToMe(Lcom/alipay/mobile/security/gesture/data/GestureAppearModeBaseData;)Lcom/alipay/mobile/security/gesture/data/NormalMode;

    move-result-object v0

    goto :goto_0
.end method

.method public isInBlackList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "isInBlackList userID:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " appID:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " url:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " view:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;->l(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;->getBlackMode(Ljava/lang/String;)Lcom/alipay/mobile/security/gesture/data/ConvenientMode;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "isInBlackList cm is null"

    invoke-static {v0}, Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0, p2, p3, p4}, Lcom/alipay/mobile/security/gesture/data/ConvenientMode;->isHit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "isInBlackList rtn "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;->l(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v1, v3, v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "isInBlackList timeCost:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;->l(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isInEditMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;->a:Z

    return v0
.end method

.method public isInWhiteList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "isInWhiteList userID:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " appID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " url:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " view:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;->l(Ljava/lang/String;)V

    sget-object v0, Lcom/alipay/mobile/security/gesture/service/c;->a:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "isInWhiteList userID:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " appID:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " url:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " view:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;->l(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;->getWhiteMode(Ljava/lang/String;)Lcom/alipay/mobile/security/gesture/data/NormalMode;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "isInWhiteList cm is null"

    invoke-static {v0}, Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0, p2, p3, p4}, Lcom/alipay/mobile/security/gesture/data/NormalMode;->isHit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "isInWhiteList rtn "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;->l(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v1, v3, v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "isInWhiteList timeCost:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;->l(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isNeedCheckUserId()Z
    .locals 4

    const/4 v1, 0x0

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v2, Lcom/alipay/mobile/base/config/ConfigService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/base/config/ConfigService;

    if-eqz v0, :cond_1

    const-string/jumbo v2, "YES"

    const-string/jumbo v3, "GSHongbaoUIdCheckEnable"

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/base/config/ConfigService;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "GestureConfigImpl"

    const-string/jumbo v2, "isNeedCheckUserId = true"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "GestureConfigImpl"

    const-string/jumbo v3, "isNeedCheckUserId = false"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "GestureConfigImpl"

    const-string/jumbo v3, "configService is null"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0
.end method

.method public isNeedProcessHack()Z
    .locals 3

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/base/config/ConfigService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/base/config/ConfigService;

    if-eqz v0, :cond_0

    const-string/jumbo v1, "NO"

    const-string/jumbo v2, "GestureProcessHackEnable"

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/base/config/ConfigService;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isUpgradeSwitchConvenientEnable(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1}, Lcom/alipay/mobile/security/gesture/service/g;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    const-string/jumbo v0, "onCreate"

    invoke-static {v0}, Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;->l(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/security/gesture/data/GestureConfigHelper;->getInstance()Lcom/alipay/mobile/security/gesture/data/GestureConfigHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/security/gesture/data/GestureConfigHelper;->getUsersConfig()Lcom/alipay/mobile/security/gesture/data/UserGesture;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;->b:Lcom/alipay/mobile/security/gesture/data/UserGesture;

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;->b:Lcom/alipay/mobile/security/gesture/data/UserGesture;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;->a()V

    :cond_0
    :goto_0
    new-instance v0, Lcom/alipay/mobile/security/gesture/service/e;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/security/gesture/service/e;-><init>(Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;)V

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;->c:Lcom/alipay/mobile/security/gesture/service/f;

    invoke-static {}, Lcom/alipay/mobile/security/gesture/service/c;->a()Lcom/alipay/mobile/security/gesture/service/c;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;->c:Lcom/alipay/mobile/security/gesture/service/f;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/gesture/service/c;->b(Lcom/alipay/mobile/security/gesture/service/f;)V

    return-void

    :cond_1
    const-string/jumbo v0, "oncreate ugd default is null no dbData"

    invoke-static {v0}, Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;->l(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "see init "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;->b:Lcom/alipay/mobile/security/gesture/data/UserGesture;

    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;->l(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;->b:Lcom/alipay/mobile/security/gesture/data/UserGesture;

    sget-object v1, Lcom/alipay/mobile/security/gesture/service/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/gesture/data/UserGesture;->getUserGestureData(Ljava/lang/String;)Lcom/alipay/mobile/security/gesture/data/UserGestureData;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;->d:Lcom/alipay/mobile/security/gesture/data/UserGestureData;

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;->d:Lcom/alipay/mobile/security/gesture/data/UserGestureData;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;->genDefault()Lcom/alipay/mobile/security/gesture/data/UserGestureData;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;->d:Lcom/alipay/mobile/security/gesture/data/UserGestureData;

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;->b:Lcom/alipay/mobile/security/gesture/data/UserGesture;

    iget-object v0, v0, Lcom/alipay/mobile/security/gesture/data/UserGesture;->userGestureList:Ljava/util/List;

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;->d:Lcom/alipay/mobile/security/gesture/data/UserGestureData;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 2

    const-string/jumbo v0, "onDestroy"

    invoke-static {v0}, Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;->l(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/security/gesture/service/c;->a()Lcom/alipay/mobile/security/gesture/service/c;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;->c:Lcom/alipay/mobile/security/gesture/service/f;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/gesture/service/c;->a(Lcom/alipay/mobile/security/gesture/service/f;)V

    return-void
.end method

.method public removeUserGestureData(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "removeUserGestureData begin userID:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;->l(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;->b:Lcom/alipay/mobile/security/gesture/data/UserGesture;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;->b:Lcom/alipay/mobile/security/gesture/data/UserGesture;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/security/gesture/data/UserGesture;->getUserGestureData(Ljava/lang/String;)Lcom/alipay/mobile/security/gesture/data/UserGestureData;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;->b:Lcom/alipay/mobile/security/gesture/data/UserGesture;

    iget-object v1, v1, Lcom/alipay/mobile/security/gesture/data/UserGesture;->userGestureList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "removeUserGestureData 99 success:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;->l(Ljava/lang/String;)V

    :cond_2
    const-string/jumbo v1, "remove db data"

    invoke-static {v1}, Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;->l(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/security/gesture/data/GestureConfigHelper;->getInstance()Lcom/alipay/mobile/security/gesture/data/GestureConfigHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/security/gesture/data/GestureConfigHelper;->delete(Lcom/alipay/mobile/security/gesture/data/UserGestureData;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "remove db result:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;->l(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public saveUserBlackModeConfigItem(Ljava/lang/String;Lcom/alipay/mobile/security/gesture/data/ConfigItemData;)V
    .locals 4

    const-string/jumbo v0, "fastStage2"

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/security/gesture/data/GestureAppearModeBaseData;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "saveUserBlackModeConfigItem data null"

    invoke-static {v0}, Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;->l(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    iget-object v0, v0, Lcom/alipay/mobile/security/gesture/data/GestureAppearModeBaseData;->configItem:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;->b:Lcom/alipay/mobile/security/gesture/data/UserGesture;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/security/gesture/data/UserGesture;->getUserGestureData(Ljava/lang/String;)Lcom/alipay/mobile/security/gesture/data/UserGestureData;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/security/gesture/data/GestureConfigHelper;->getInstance()Lcom/alipay/mobile/security/gesture/data/GestureConfigHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/security/gesture/data/GestureConfigHelper;->addOrUpdate(Lcom/alipay/mobile/security/gesture/data/UserGestureData;)Z

    goto :goto_0

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;

    invoke-virtual {v0, p2}, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;->equalsExceptOn(Lcom/alipay/mobile/security/gesture/data/ConfigItemData;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v1, p2, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;->on:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;->on:Ljava/lang/Integer;

    const/4 v0, 0x1

    goto :goto_1
.end method

.method public setInEditMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;->a:Z

    return-void
.end method

.method public startGestureConfigActivity()V
    .locals 3

    const-string/jumbo v0, "startGestureConfigActivity"

    invoke-static {v0}, Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;->l(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity_;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
