from starcluster.logger import log
from starcluster.clustersetup import ClusterSetup

class PackageInstaller(ClusterSetup):

    def __init__(self, pkg_to_install):
         self.pkg_to_install = pkg_to_install

    def run(self, nodes, master, user, user_shell, volumes):
        for node in nodes:
            log.info("Installing %s on node: %s" % \
                (self.pkg_to_install, node.alias))
            node.ssh.execute('apt-get -y install %s' % \
                self.pkg_to_install)
