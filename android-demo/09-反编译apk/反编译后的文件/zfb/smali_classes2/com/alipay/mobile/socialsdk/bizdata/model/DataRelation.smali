.class public Lcom/alipay/mobile/socialsdk/bizdata/model/DataRelation;
.super Ljava/lang/Object;
.source "DataRelation.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/j256/ormlite/table/DatabaseTable;
    daoClass = Lcom/alipay/mobile/socialsdk/bizdata/db/DataRelationDatabaseDaoImpl;
.end annotation


# static fields
.field public static final MIME_CHAT_BACKUP:Ljava/lang/String; = "4"

.field public static final MIME_GROUP_NICK:Ljava/lang/String; = "3"

.field public static final MIME_MSG_FIRE:Ljava/lang/String; = "7"

.field public static final MIME_QUERY_PROFILE_TIME:Ljava/lang/String; = "5"

.field public static final MIME_USER_GRADE:Ljava/lang/String; = "6"

.field public static final PERSONAL_PHOTO_WALL:Ljava/lang/String; = "8"

.field public static final serialVersionUID:J = 0x3af01c1f37ac0ef2L


# instance fields
.field public data1:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public data2:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public data3:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public data4:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public data5:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public data6:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public data7:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public data8:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public drId:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        generatedId = true
    .end annotation
.end field

.field public mimeType:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
