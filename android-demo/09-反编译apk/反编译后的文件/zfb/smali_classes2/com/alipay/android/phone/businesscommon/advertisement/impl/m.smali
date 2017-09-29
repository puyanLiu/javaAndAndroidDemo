.class final Lcom/alipay/android/phone/businesscommon/advertisement/impl/m;
.super Ljava/lang/Object;
.source "AdSpaceBehaviorManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/businesscommon/advertisement/impl/l;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Ljava/lang/String;

.field private final synthetic e:Z


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/businesscommon/advertisement/impl/l;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/m;->a:Lcom/alipay/android/phone/businesscommon/advertisement/impl/l;

    iput-object p2, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/m;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/m;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/m;->d:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/m;->e:Z

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .prologue
    const/4 v2, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 79
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/m;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/m;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    invoke-static {}, Lcom/alipay/android/phone/businesscommon/advertisement/g/a;->a()Lcom/alipay/android/phone/businesscommon/advertisement/g/a;

    move-result-object v0

    .line 84
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/m;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/businesscommon/advertisement/g/a;->a(Ljava/lang/String;)Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;

    move-result-object v0

    .line 83
    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/c/a;->a(Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;)Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;

    move-result-object v3

    .line 85
    if-eqz v3, :cond_0

    iget-object v0, v3, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->spaceObjectList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, v3, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->spaceObjectList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    iget-object v0, v3, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->spaceObjectList:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;

    iget-object v4, v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;->bizExtInfo:Ljava/util/Map;

    .line 91
    iget-object v0, v3, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->spaceObjectList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    move-object v0, v2

    .line 151
    :cond_3
    if-nez v0, :cond_12

    .line 152
    const-string/jumbo v0, "can\'t found suitable ad at onUserBehaviorFeedback!"

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/h/a;->e(Ljava/lang/String;)V

    move-object v0, v2

    .line 156
    :goto_1
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/m;->a:Lcom/alipay/android/phone/businesscommon/advertisement/impl/l;

    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/m;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/m;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/m;->b:Ljava/lang/String;

    new-instance v6, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-direct {v6}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;-><init>()V

    invoke-virtual {v6, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam1(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam2(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam3(Ljava/lang/String;)V

    if-eqz v4, :cond_4

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_13

    :cond_4
    invoke-virtual {v6, v2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setSeedID(Ljava/lang/String;)V

    const-string/jumbo v0, "AdClick"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getBehavorLogger()Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;

    move-result-object v0

    invoke-interface {v0, v6}, Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;->click(Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V

    .line 158
    :goto_3
    invoke-static {}, Lcom/alipay/android/phone/businesscommon/advertisement/g/a;->a()Lcom/alipay/android/phone/businesscommon/advertisement/g/a;

    move-result-object v0

    invoke-static {v3}, Lcom/alipay/android/phone/businesscommon/advertisement/c/a;->a(Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;)Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;

    move-result-object v1

    invoke-virtual {v0, v1, v8}, Lcom/alipay/android/phone/businesscommon/advertisement/g/a;->a(Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;Z)Z

    goto/16 :goto_0

    .line 91
    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;

    .line 92
    iget-object v5, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/m;->c:Ljava/lang/String;

    iget-object v6, v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;->objectId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 95
    iget-boolean v1, v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;->showRealtimeReport:Z

    if-eqz v1, :cond_6

    const-string/jumbo v1, "AdShow"

    iget-object v5, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/m;->d:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 96
    :cond_6
    iget-boolean v1, v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;->clickRealtimeReport:Z

    if-eqz v1, :cond_7

    const-string/jumbo v1, "AdClick"

    iget-object v5, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/m;->d:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 97
    :cond_7
    iget-boolean v1, v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;->closeRealtimeReport:Z

    if-eqz v1, :cond_9

    const-string/jumbo v1, "AdClose"

    iget-object v5, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/m;->d:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 99
    :cond_8
    new-instance v1, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceFeedbackReq;

    invoke-direct {v1}, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceFeedbackReq;-><init>()V

    .line 100
    iget-object v5, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/m;->d:Ljava/lang/String;

    iput-object v5, v1, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceFeedbackReq;->behavior:Ljava/lang/String;

    .line 101
    iget-object v5, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/m;->c:Ljava/lang/String;

    iput-object v5, v1, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceFeedbackReq;->spaceObjectId:Ljava/lang/String;

    .line 102
    iget-object v5, v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;->mrpRuleId:Ljava/lang/String;

    iput-object v5, v1, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceFeedbackReq;->mrpRuleId:Ljava/lang/String;

    .line 103
    invoke-static {}, Lcom/alipay/android/phone/businesscommon/advertisement/e/a;->a()Lcom/alipay/android/phone/businesscommon/advertisement/e/a;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/alipay/android/phone/businesscommon/advertisement/e/a;->a(Lcom/alipay/cdp/common/service/facade/space/domain/SpaceFeedbackReq;)V

    .line 106
    :cond_9
    iget-object v1, v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;->behaviors:Ljava/util/List;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;->behaviors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 107
    iget-object v1, v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;->behaviors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_a
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectBehavior;

    .line 108
    const-string/jumbo v6, "AdClick"

    iget-object v7, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/m;->d:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 109
    const-string/jumbo v6, "CLOSE_AFTER_CLICK"

    .line 110
    iget-object v7, v1, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectBehavior;->behavior:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 111
    iget v6, v1, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectBehavior;->hadShowedTimes:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v1, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectBehavior;->hadShowedTimes:I

    goto :goto_4

    .line 112
    :cond_b
    const-string/jumbo v6, "CLOSE_EVERYDAY_CLICK"

    .line 113
    iget-object v7, v1, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectBehavior;->behavior:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 114
    iget-wide v6, v1, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectBehavior;->behaviorUpdateTime:J

    invoke-static {v6, v7}, Lcom/alipay/android/phone/businesscommon/advertisement/c/a;->a(J)Z

    move-result v6

    if-nez v6, :cond_c

    .line 115
    iput v8, v1, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectBehavior;->hadShowedTimes:I

    .line 117
    :cond_c
    iget v6, v1, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectBehavior;->hadShowedTimes:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v1, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectBehavior;->hadShowedTimes:I

    .line 119
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 118
    iput-wide v6, v1, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectBehavior;->behaviorUpdateTime:J

    goto :goto_4

    .line 120
    :cond_d
    const-string/jumbo v6, "CLOSE_AFTER_JUMP"

    .line 121
    iget-object v7, v1, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectBehavior;->behavior:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 122
    iput-boolean v9, v1, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectBehavior;->jumpedByUser:Z

    goto :goto_4

    .line 124
    :cond_e
    const-string/jumbo v6, "AdShow"

    .line 125
    iget-object v7, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/m;->d:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 126
    const-string/jumbo v6, "CLOSE_AFTER_TIMES"

    .line 127
    iget-object v7, v1, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectBehavior;->behavior:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 128
    iget v6, v1, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectBehavior;->hadShowedTimes:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v1, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectBehavior;->hadShowedTimes:I

    goto :goto_4

    .line 129
    :cond_f
    const-string/jumbo v6, "CLOSE_EVERYDAY_TIMES"

    .line 130
    iget-object v7, v1, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectBehavior;->behavior:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 131
    iget-wide v6, v1, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectBehavior;->behaviorUpdateTime:J

    invoke-static {v6, v7}, Lcom/alipay/android/phone/businesscommon/advertisement/c/a;->a(J)Z

    move-result v6

    if-nez v6, :cond_10

    .line 132
    iput v8, v1, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectBehavior;->hadShowedTimes:I

    .line 134
    :cond_10
    iget v6, v1, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectBehavior;->hadShowedTimes:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v1, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectBehavior;->hadShowedTimes:I

    .line 136
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 135
    iput-wide v6, v1, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectBehavior;->behaviorUpdateTime:J

    goto/16 :goto_4

    .line 138
    :cond_11
    const-string/jumbo v6, "AdClose"

    .line 139
    iget-object v7, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/m;->d:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 140
    const-string/jumbo v6, "CLOSE_AFTER_SHUT"

    .line 141
    iget-object v7, v1, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectBehavior;->behavior:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    iget-boolean v6, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/m;->e:Z

    if-eqz v6, :cond_a

    .line 142
    iput-boolean v9, v1, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectBehavior;->closedByUser:Z

    goto/16 :goto_4

    .line 154
    :cond_12
    iget-object v0, v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;->mrpRuleId:Ljava/lang/String;

    goto/16 :goto_1

    .line 156
    :cond_13
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v6, v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_14
    const-string/jumbo v0, "AdShow"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getBehavorLogger()Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;

    move-result-object v0

    invoke-interface {v0, v6}, Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;->openPage(Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V

    goto/16 :goto_3

    :cond_15
    const-string/jumbo v0, "AdClose"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getBehavorLogger()Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;

    move-result-object v0

    invoke-interface {v0, v6}, Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;->click(Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V

    goto/16 :goto_3

    :cond_16
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Not supportive behaior:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/h/a;->e(Ljava/lang/String;)V

    goto/16 :goto_3
.end method
