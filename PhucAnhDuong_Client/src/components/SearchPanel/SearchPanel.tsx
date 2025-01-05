import React from 'react';
import { ActionIcon, Button, Group, Paper, Select, TextInput, Tooltip } from '@mantine/core';
import { AdjustmentsHorizontal, Edit, Eraser, Filter, Search } from 'tabler-icons-react';
import useSearchPanelViewModel from 'components/SearchPanel/SearchPanel.vm';

function SearchPanel() {
  const {
    searchInputRef,
    filterSelectList,
    activeFilterId,
    handleSearchInput,
    handleFilterSelect,
    handleAddFilterButton,
    handleResetButton,
    handleSearchButton,
  } = useSearchPanelViewModel();

  return (
    <Paper >
      
    </Paper>
  );
}

export default React.memo(SearchPanel);
