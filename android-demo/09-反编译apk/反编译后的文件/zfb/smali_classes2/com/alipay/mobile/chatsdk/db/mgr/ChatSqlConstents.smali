.class public Lcom/alipay/mobile/chatsdk/db/mgr/ChatSqlConstents;
.super Ljava/lang/Object;
.source "ChatSqlConstents.java"


# static fields
.field public static final sql_end_getLastFeedsSummary:Ljava/lang/String; = " ) AS summ  WHERE  cm2.mId = summ.mId;"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final sql_end_getLastSummeryForTarget:Ljava/lang/String; = " ) AS summ  WHERE  cm2.mId = summ.mId;"

.field public static final sql_getAllTargetSummary:Ljava/lang/String; = "SELECT cm2.*,        (SELECT Count(cm3.isRead) unread_count         FROM   chat_message cm3         WHERE  cm3.toId = cm2.toId         AND cm3.appId = cm2.appId         AND cm3.userId = cm2.userId         AND cm3.isRead = \'n\')  unread_count  FROM chat_message  AS cm2  WHERE cm2.appId=?  GROUP BY cm2.userId,cm2.toId ; "

.field public static final sql_getLastSummaryForAllTarget:Ljava/lang/String; = " SELECT cm2.*, (SELECT Count(cm3.isRead) unread_count  FROM   chat_message cm3  WHERE  cm3.toId = cm2.toId  AND cm3.appId = cm2.appId  AND cm3.userId = cm2.userId  AND cm3.isRead = \'n\') unread_count  FROM   chat_message AS cm2,  (SELECT Max(cm1.mId)  as mId  FROM   chat_message cm1  WHERE  cm1.appId = ?  AND cm1.userId = ?  GROUP  BY cm1.toId) AS summ  WHERE  cm2.mId = summ.mId;"

.field public static final sql_getLastSummeryForTargetWithMExt:Ljava/lang/String; = " AND cm1.mExt = \'?\' "

.field public static final sql_start_getLastFeedsSummary:Ljava/lang/String; = " SELECT cm2.*,  (SELECT Count(cm3.isRead) unread_count  FROM   chat_message cm3   WHERE cm3.appId = cm2.appId  AND cm3.userId = cm2.userId  AND cm3.isRead = \'n\' ) unread_count  FROM   chat_message AS cm2,  (SELECT Max(cm1.mId)  as mId  FROM   chat_message cm1  WHERE  cm1.appId = ?  AND cm1.userId = ?  AND cm1.mType<>\'recall\' "
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final sql_start_getLastSummeryForTarget:Ljava/lang/String; = " SELECT cm2.*,  (SELECT Count(cm3.isRead) unread_count  FROM   chat_message cm3  WHERE  cm3.toId = cm2.toId  AND cm3.appId = cm2.appId  AND cm3.userId = cm2.userId  AND cm3.isRead = \'n\') unread_count  FROM   chat_message AS cm2,  (SELECT Max(cm1.mId)  as mId  FROM   chat_message cm1  WHERE  cm1.appId = ?  AND cm1.userId = ?  AND cm1.toId = ? "


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
