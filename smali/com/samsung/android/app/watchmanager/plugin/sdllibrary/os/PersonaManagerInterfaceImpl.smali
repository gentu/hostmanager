.class public Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/os/PersonaManagerInterfaceImpl;
.super Ljava/lang/Object;
.source "PersonaManagerInterfaceImpl.java"

# interfaces
.implements Lcom/samsung/android/app/watchmanager/plugin/libinterface/os/PersonaManagerInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPersonaName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "user"    # I

    .prologue
    .line 14
    invoke-static {p1, p2}, Landroid/os/PersonaManager;->getPersonaName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
