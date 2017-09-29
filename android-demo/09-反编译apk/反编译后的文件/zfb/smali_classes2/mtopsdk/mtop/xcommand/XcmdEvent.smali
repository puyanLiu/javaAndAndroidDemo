.class public Lmtopsdk/mtop/xcommand/XcmdEvent;
.super Ljava/lang/Object;
.source "XcmdEvent.java"


# static fields
.field public static final EVENT_NEW_CONFIG:Ljava/lang/String; = "newConfig="


# instance fields
.field commandName:Ljava/lang/String;

.field value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lmtopsdk/mtop/xcommand/XcmdEvent;->commandName:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lmtopsdk/mtop/xcommand/XcmdEvent;->value:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public getCommandName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lmtopsdk/mtop/xcommand/XcmdEvent;->commandName:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lmtopsdk/mtop/xcommand/XcmdEvent;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setCommandName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lmtopsdk/mtop/xcommand/XcmdEvent;->commandName:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lmtopsdk/mtop/xcommand/XcmdEvent;->value:Ljava/lang/String;

    .line 41
    return-void
.end method
